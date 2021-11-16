//
// Copyright 2016 The Android Open Source Project
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#define LOG_TAG "android.hardware.bluetooth@1.0-impl-universal5420"
#include "bluetooth_hci.h"

#include <log/log.h>

#include "vendor_interface.h"

namespace android {
namespace hardware {
namespace bluetooth {
namespace V1_0 {
namespace implementation {

static const uint8_t HCI_DATA_TYPE_COMMAND = 1;
static const uint8_t HCI_DATA_TYPE_ACL = 2;
static const uint8_t HCI_DATA_TYPE_SCO = 3;

class BluetoothDeathRecipient : public hidl_death_recipient {
 public:
  BluetoothDeathRecipient(const sp<IBluetoothHci> hci) : mHci(hci) {}

  virtual void serviceDied(
      uint64_t /*cookie*/,
      const wp<::android::hidl::base::V1_0::IBase>& /*who*/) {
    ALOGE("BluetoothDeathRecipient::serviceDied - Bluetooth service died");
    has_died_ = true;
    mHci->close();
  }
  sp<IBluetoothHci> mHci;
  bool getHasDied() const { return has_died_; }
  void setHasDied(bool has_died) { has_died_ = has_died; }

 private:
  bool has_died_;
};

BluetoothHci::BluetoothHci()
    : death_recipient_(new BluetoothDeathRecipient(this)) {}

Return<void> BluetoothHci::initialize(
    const ::android::sp<IBluetoothHciCallbacks>& cb) {
  ALOGI("BluetoothHci::initialize()");
  if (cb == nullptr) {
    ALOGE("cb == nullptr! -> Unable to call initializationComplete(ERR)");
    return Void();
  }

  death_recipient_->setHasDied(false);
  cb->linkToDeath(death_recipient_, 0);

  bool rc = VendorInterface::Initialize(
      [cb](bool status) {
        auto hidl_status = cb->initializationComplete(
            status ? Status::SUCCESS : Status::INITIALIZATION_ERROR);
        if (!hidl_status.isOk()) {
          ALOGE("VendorInterface -> Unable to call initializationComplete()");
        }
      },
      [cb](const hidl_vec<uint8_t>& packet) {
        auto hidl_status = cb->hciEventReceived(packet);
        if (!hidl_status.isOk()) {
          ALOGE("VendorInterface -> Unable to call hciEventReceived()");
        }
      },
      [cb](const hidl_vec<uint8_t>& packet) {
        auto hidl_status = cb->aclDataReceived(packet);
        if (!hidl_status.isOk()) {
          ALOGE("VendorInterface -> Unable to call aclDataReceived()");
        }
      },
      [cb](const hidl_vec<uint8_t>& packet) {
        auto hidl_status = cb->scoDataReceived(packet);
        if (!hidl_status.isOk()) {
          ALOGE("VendorInterface -> Unable to call scoDataReceived()");
        }
      });
  if (!rc) {
    auto hidl_status = cb->initializationComplete(Status::INITIALIZATION_ERROR);
    if (!hidl_status.isOk()) {
      ALOGE("VendorInterface -> Unable to call initializationComplete(ERR)");
    }
  }

  unlink_cb_ = [cb](sp<BluetoothDeathRecipient>& death_recipient) {
    if (death_recipient->getHasDied())
      ALOGI("Skipping unlink call, service died.");
    else
      cb->unlinkToDeath(death_recipient);
  };

  return Void();
}

Return<void> BluetoothHci::close() {
  ALOGI("BluetoothHci::close()");
  unlink_cb_(death_recipient_);
  VendorInterface::Shutdown();
  return Void();
}

Return<void> BluetoothHci::sendHciCommand(const hidl_vec<uint8_t>& command) {
    ALOGI("BluetoothHci::sendHciCommand");
  sendDataToController(HCI_DATA_TYPE_COMMAND, command);
  return Void();
}

Return<void> BluetoothHci::sendAclData(const hidl_vec<uint8_t>& data) {
    ALOGI("BluetoothHci::sendAclData");
  sendDataToController(HCI_DATA_TYPE_ACL, data);
  return Void();
}

Return<void> BluetoothHci::sendScoData(const hidl_vec<uint8_t>& data) {
    ALOGI("BluetoothHci::sendScoData");
  sendDataToController(HCI_DATA_TYPE_SCO, data);
  return Void();
}

void BluetoothHci::sendDataToController(const uint8_t type,
                                        const hidl_vec<uint8_t>& data) {
/*
    ALOGI("BluetoothHci::sendDataToController type[%d], size[%d]",type, data.size());

    for (int i = 0 ; i < data.size(); i++){
     ALOGI("data[%i]=[%02x]",i,data[i]);
    }
*/
    /*  
    typedef struct {
    uint16_t handle;
    uint16_t peer_codec;
    uint16_t state;
    } bt_vendor_op_audio_state_t;
    */
    
    bt_vendor_op_audio_state_t audio_state;
    //sco_codec_t codec;
    
    //audio_state.handle = handle;
    //audio_state.peer_codec = codec;
    //audio_state.state = state;
    /*
    SCO_CODEC_NONE = 0x0000,= 
    SCO_CODEC_CVSD = 0x0001,= d0[26], d1[0c], d2[02], d3[60], d4[00]
    SCO_CODEC_MSBC = 0x0002,= d0[26], d1[0c], d2[02], d3[63], d4[00]
    */
/*
    SCO_STATE_OFF = 0,      // Audio is off.
    SCO_STATE_OFF_TRANSFER, // Closed pending final transfer of audio.
    SCO_STATE_ON,           // Audio is on.
    SCO_STATE_SETUP,        // Open pending completion of audio setup.
    
    don't care for handle, and state, bt_vendor need only peer_codec to complete setup.
    so use handle = 1, state = SCO_STATE_SETUP
    and do not care to set back to SCO_CODEC_NONE when close SCO.
*/ 

  if (type == 1 && data.size() == 5 && (data[0] == 0x26 && data[1] == 0x0C && data[3] == 0x63) ) {

    audio_state.handle = 1;
    audio_state.peer_codec = SCO_CODEC_MSBC;
    audio_state.state = SCO_STATE_SETUP;
      
    VendorInterface::get()->SetAudioState(&audio_state);
  } else if (type == 1 && data.size() == 5 && (data[0] == 0x26 && data[1] == 0x0C && data[3] == 0x60) ) {
    audio_state.handle = 1;
    audio_state.peer_codec = SCO_CODEC_CVSD;
    audio_state.state = SCO_STATE_SETUP;
    VendorInterface::get()->SetAudioState(&audio_state);
  }

  VendorInterface::get()->Send(type, data.data(), data.size());

/*  if (type == 1 && data.size() == 5 && (data[0] == 0x26 && data[1] == 0x0C && data[3] == 0x60) ) {
    audio_state.handle = 1;
    audio_state.peer_codec = SCO_CODEC_NONE;
    audio_state.state = SCO_STATE_OFF;
    VendorInterface::get()->SetAudioState(&audio_state);
  }
*/
}

IBluetoothHci* HIDL_FETCH_IBluetoothHci(const char* /* name */) {
  return new BluetoothHci();
}

}  // namespace implementation
}  // namespace V1_0
}  // namespace bluetooth
}  // namespace hardware
}  // namespace android
