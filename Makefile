FLUTTER_VERSION := $(shell awk -F'"' '/flutterSdkVersion/ {print $$4}' .fvm/fvm_config.json)

setup:
	dart pub global activate fvm
	yes | fvm use $(FLUTTER_VERSION) | true
	fvm install
	fvm flutter pub get
	fvm flutter precache --ios

clean:
## Flutter cache
	rm ios/Podfile.lock | true
## ios Pod Lock file
	rm -rf ios/Pods | true
	rm ios/Flutter/Flutter.podspec | true
## pod cache
	rm -rf ~/Library/Developer/Xcode/DerivedData/
## Xcode cache
	rm pubspec.lock | true
	fvm flutter clean
	fvm flutter pub get

## install pod
	cd ios&&pod update&&pod install

build-runner:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

w:
	fvm flutter pub get
	fvm flutter packages pub run build_runner watch --delete-conflicting-outputs
