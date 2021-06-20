/*
 * Copyright (C) 2017 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef SAMSUNG_AUDIO_H
#define SAMSUNG_AUDIO_H

#include <telephony/ril.h>

/*
 * Sound card specific defines.
 *
 * This is an example configuration for a WolfsonMicro WM1814 sound card.
 * Codec: Arizona
 *
 * If you driver does not support one of the devices, the id should not be
 * defined.
 */
/******************************** SOUND DEVICES ID: START *******************/
#define MIXER_CARD 0
#define SOUND_CARD 0

/* Playback */
#define SOUND_PLAYBACK_DEVICE 0 //3
#define SOUND_PLAYBACK_SCO_DEVICE 2
#define SOUND_DEEP_BUFFER_DEVICE 3
#define SOUND_HDMI_DEVICE 0

/* Capture */
#define SOUND_CAPTURE_DEVICE 0
#define SOUND_CAPTURE_SCO_DEVICE 2

/* Voice calls */
#define SOUND_PLAYBACK_VOICE_DEVICE 1
#define SOUND_CAPTURE_VOICE_DEVICE 1

#define SOUND_CAPTURE_LOOPBACK_AEC_DEVICE 1
/* Unusupported
#define SOUND_CAPTURE_HOTWORD_DEVICE 0
*/
/******************************** SOUND DEVICES ID: END *******************/
/* Wideband AMR callback */
#ifndef RIL_UNSOL_SNDMGR_WB_AMR_REPORT
#ifdef RIL_UNSOL_WB_AMR_STATE
#define RIL_UNSOL_SNDMGR_WB_AMR_REPORT RIL_UNSOL_WB_AMR_STATE
#else
#define RIL_UNSOL_SNDMGR_WB_AMR_REPORT 0
#endif
#endif

/*
 * If the device has stereo speakers and the speakers are arranged on
 * different sides of the device you can activate this feature by
 * setting it to 1.
 */
#define SWAP_SPEAKER_ON_SCREEN_ROTATION 1

/*
 * You can set this to 1 if your kernel supports irq affinity for
 * fast mode. See /proc/asound/irq_affinity
 */
#define SUPPORTS_IRQ_AFFINITY 0

/*
 * The Wolfson/Cirruslogic chips need to shutdown the DAPM route completely
 * to be able to load a new firmware. Some of these chips need a delay after
 * shutodown to full poweroff the DSPs.
 *
 * A good value to start with is 10ms:
 *
 * #define DSP_POWEROFF_DELAY 10 * 1000
 */

#define DSP_POWEROFF_DELAY 10 * 1000
/*
 * Some device variants (often T-Mobile) have a separate voice processing IC
 * (Audience EarSmart xxx).
 * This hooks into the voice call session and enables, configures and disables
 * this extra firmware so RX/TX streams can be routed by the driver.
 */
/* #define AUDIENCE_EARSMART_IC */

/*
 * Sound speed delay from speakers to mic, average for both sides in air range
 * from 20-40 degree celcius
 * in unit of nanosecond
 * 416172-487926 is the delay from speaker to mic of voice travelling in room temp 20-40C air for P901.
 */
#define SSD_SPKTOMIC_DELAY 452049

/* Set PREPROCESSING_ENABLED to activate PREPROCESSING data on output and input
 * 
 * Set to 1 to Enabled.
 */
#define PREPROCESSING_ENABLED 1

#endif // SAMSUNG_AUDIO_H
