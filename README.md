<img src="https://user-images.githubusercontent.com/88666686/143598541-828b5d17-659b-43d5-9628-fc9c63c2356c.png"/></br>
<img src="https://img.shields.io/badge/iOS-9.0+-00ADD8?logo=apple"/>

Rotations is a tiny framework for iOS to get the device orientation. 

## Sample project
There is SampleApp included to help you get started.</br>
Choose SampleApp target, Signing & Capabilities tab, choose a development team, run on a *real device*.</br>
You’ll see a label in the center of the screen, rotate the device and see how it updates.</br>
Now lock the orientation from Control Center <img src="https://user-images.githubusercontent.com/88666686/143764666-40641cbc-254e-45ce-a476-a48c8f4078d4.png" width="30px"/>, return to the app and see how the label changes, even though the orientation is locked. Ta daa!

## Installation
**Manually**
1. [Download Rotations framework.](https://github.com/ANameBehindTheNickname/Rotations/releases/download/v1.0/Rotations.xcframework.zip)
2. Extract it, then drag & drop it anywhere inside your proejct (I prefer having Frameworks folder for that). Make sure that the "Copy items if needed" checkbox is checked.</br>
<img src="https://user-images.githubusercontent.com/88666686/143690168-5f557cf1-cda2-4545-a9b7-e7021b7c62e3.png" width="300px"/>

## Usage
1. Import the framework.
```Swift
import Rotations
```
2. Initialize a rotation manager.
```Swift
let rotationManager = RotationManager()
```
3. Implement a delegate to get rotation updates.
```Swift
// You can also extend an existing class like so – extension MyExistingClass: RotationManagerDelegate { ... }
class MyDelegate: RotationManagerDelegate {
  func deviceDidRotate(to orientation: UIDeviceOrientation) {
    // TODO: - add an implementation
  }
}
```
4. Call `startRotationManagerUpdates` on the rotation manager and pass a delegate.
```Swift
let delegate = MyDelegate()
rotationManager.startRotationManagerUpdates(delegate)
```
5. You must call `stopRotationManagerUpdates` when you no longer want your app to process rotation updates.</br>
```Swift
rotationManager.stopRotationManagerUpdates()
```

## Troubleshooting
If you have troubles building, make sure you see Rotations.xcframework under Frameworks, Libraries, Embedded Content.</br>
To get there choose your project, target, General tab, scroll down.
<img src="https://user-images.githubusercontent.com/88666686/143690166-325f56ac-2ee4-4cb4-b4a4-f605ee0d9e3e.png" width="580px"/></br>

Also, make sure you see Rotations.xcframework (with Required status) under Link Binary With Libraries. To get there use the same steps as before, just select Build Phases tab instead of General.
<img src="https://user-images.githubusercontent.com/88666686/143690167-e3482b32-565e-4b49-961c-bd2623ac9cca.png" width="660px"/></br>

## Notes
- Rotations is a static library, meaning it is included in the binary when you build the app. *No need to embed it in the applicaiton.*</br>
Keep "Do Not Embed" option (see the [first Troubleshooting instruction](#troubleshooting)).
- `deviceDidRotate(to:)` delegate method is called off of the Main thread. Take that into consideration when updating UI.

## License
Copyright (c) 2021, ANameBehindTheNickname. Permission is hereby granted to use this framework as is, modification are not allowed. All rights reserved.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
