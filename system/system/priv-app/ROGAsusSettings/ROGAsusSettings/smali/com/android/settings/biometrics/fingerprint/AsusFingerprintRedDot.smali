.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;
.super Landroid/widget/ImageView;
.source "AsusFingerprintRedDot.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentH:I

.field private mContentW:I

.field private mContext:Landroid/content/Context;

.field private mDrawFinishMask:Z

.field private mDrawInvalidProgress:Z

.field private mFingerprintStepId:[I

.field private mFinishMask:I

.field private mImageH:I

.field private mImageW:I

.field private mLastRatio:I

.field private mRatio:I

.field private mShowSecondPhaseImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 929
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawFinishMask:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawInvalidProgress:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mShowSecondPhaseImage:Z

    const/16 v1, 0x333

    new-array v1, v1, [I

    .line 43
    sget v2, Lcom/android/settings/R$drawable;->rog_red01_1_00:I

    aput v2, v1, v0

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_01:I

    const/4 v2, 0x1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_02:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_03:I

    const/4 v2, 0x3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_04:I

    const/4 v2, 0x4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_05:I

    const/4 v2, 0x5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_06:I

    const/4 v2, 0x6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_07:I

    const/4 v2, 0x7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_08:I

    const/16 v2, 0x8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_09:I

    const/16 v2, 0x9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_10:I

    const/16 v2, 0xa

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_11:I

    const/16 v2, 0xb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_12:I

    const/16 v2, 0xc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_13:I

    const/16 v2, 0xd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_14:I

    const/16 v2, 0xe

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_15:I

    const/16 v2, 0xf

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_16:I

    const/16 v2, 0x10

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_17:I

    const/16 v2, 0x11

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_18:I

    const/16 v2, 0x12

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_19:I

    const/16 v2, 0x13

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_20:I

    const/16 v2, 0x14

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_00:I

    const/16 v2, 0x15

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_01:I

    const/16 v2, 0x16

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_02:I

    const/16 v2, 0x17

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_03:I

    const/16 v2, 0x18

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_04:I

    const/16 v2, 0x19

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_05:I

    const/16 v2, 0x1a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_06:I

    const/16 v2, 0x1b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_07:I

    const/16 v2, 0x1c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_08:I

    const/16 v2, 0x1d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_09:I

    const/16 v2, 0x1e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_10:I

    const/16 v2, 0x1f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_11:I

    const/16 v2, 0x20

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_12:I

    const/16 v2, 0x21

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_13:I

    const/16 v2, 0x22

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_14:I

    const/16 v2, 0x23

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_15:I

    const/16 v2, 0x24

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_16:I

    const/16 v2, 0x25

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_17:I

    const/16 v2, 0x26

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_18:I

    const/16 v2, 0x27

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_19:I

    const/16 v2, 0x28

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red01_2_20:I

    const/16 v2, 0x29

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_00:I

    const/16 v2, 0x2a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_01:I

    const/16 v2, 0x2b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_02:I

    const/16 v2, 0x2c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_03:I

    const/16 v2, 0x2d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_04:I

    const/16 v2, 0x2e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_05:I

    const/16 v2, 0x2f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_06:I

    const/16 v2, 0x30

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_07:I

    const/16 v2, 0x31

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_08:I

    const/16 v2, 0x32

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_09:I

    const/16 v2, 0x33

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_10:I

    const/16 v2, 0x34

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_11:I

    const/16 v2, 0x35

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_12:I

    const/16 v2, 0x36

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_13:I

    const/16 v2, 0x37

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_14:I

    const/16 v2, 0x38

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_15:I

    const/16 v2, 0x39

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_16:I

    const/16 v2, 0x3a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_17:I

    const/16 v2, 0x3b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_18:I

    const/16 v2, 0x3c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_19:I

    const/16 v2, 0x3d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_1_20:I

    const/16 v2, 0x3e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_00:I

    const/16 v2, 0x3f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_01:I

    const/16 v2, 0x40

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_02:I

    const/16 v2, 0x41

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_03:I

    const/16 v2, 0x42

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_04:I

    const/16 v2, 0x43

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_05:I

    const/16 v2, 0x44

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_06:I

    const/16 v2, 0x45

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_07:I

    const/16 v2, 0x46

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_08:I

    const/16 v2, 0x47

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_09:I

    const/16 v2, 0x48

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_10:I

    const/16 v2, 0x49

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_11:I

    const/16 v2, 0x4a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_12:I

    const/16 v2, 0x4b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_13:I

    const/16 v2, 0x4c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_14:I

    const/16 v2, 0x4d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_15:I

    const/16 v2, 0x4e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_16:I

    const/16 v2, 0x4f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_17:I

    const/16 v2, 0x50

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_18:I

    const/16 v2, 0x51

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_19:I

    const/16 v2, 0x52

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red02_2_20:I

    const/16 v2, 0x53

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_00:I

    const/16 v2, 0x54

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_01:I

    const/16 v2, 0x55

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_02:I

    const/16 v2, 0x56

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_03:I

    const/16 v2, 0x57

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_04:I

    const/16 v2, 0x58

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_05:I

    const/16 v2, 0x59

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_06:I

    const/16 v2, 0x5a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_07:I

    const/16 v2, 0x5b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_08:I

    const/16 v2, 0x5c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_09:I

    const/16 v2, 0x5d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_10:I

    const/16 v2, 0x5e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_11:I

    const/16 v2, 0x5f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_12:I

    const/16 v2, 0x60

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_13:I

    const/16 v2, 0x61

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_14:I

    const/16 v2, 0x62

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_15:I

    const/16 v2, 0x63

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_16:I

    const/16 v2, 0x64

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_17:I

    const/16 v2, 0x65

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_18:I

    const/16 v2, 0x66

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_19:I

    const/16 v2, 0x67

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_1_20:I

    const/16 v2, 0x68

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_00:I

    const/16 v2, 0x69

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_01:I

    const/16 v2, 0x6a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_02:I

    const/16 v2, 0x6b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_03:I

    const/16 v2, 0x6c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_04:I

    const/16 v2, 0x6d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_05:I

    const/16 v2, 0x6e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_06:I

    const/16 v2, 0x6f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_07:I

    const/16 v2, 0x70

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_08:I

    const/16 v2, 0x71

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_09:I

    const/16 v2, 0x72

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_10:I

    const/16 v2, 0x73

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_11:I

    const/16 v2, 0x74

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_12:I

    const/16 v2, 0x75

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_13:I

    const/16 v2, 0x76

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_14:I

    const/16 v2, 0x77

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_15:I

    const/16 v2, 0x78

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_16:I

    const/16 v2, 0x79

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_17:I

    const/16 v2, 0x7a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_18:I

    const/16 v2, 0x7b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_19:I

    const/16 v2, 0x7c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red03_2_20:I

    const/16 v2, 0x7d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_00:I

    const/16 v2, 0x7e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_01:I

    const/16 v2, 0x7f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_02:I

    const/16 v2, 0x80

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_03:I

    const/16 v2, 0x81

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_04:I

    const/16 v2, 0x82

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_05:I

    const/16 v2, 0x83

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_06:I

    const/16 v2, 0x84

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_07:I

    const/16 v2, 0x85

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_08:I

    const/16 v2, 0x86

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_09:I

    const/16 v2, 0x87

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_10:I

    const/16 v2, 0x88

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_11:I

    const/16 v2, 0x89

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_12:I

    const/16 v2, 0x8a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_13:I

    const/16 v2, 0x8b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_14:I

    const/16 v2, 0x8c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_15:I

    const/16 v2, 0x8d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_16:I

    const/16 v2, 0x8e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_17:I

    const/16 v2, 0x8f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_18:I

    const/16 v2, 0x90

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_19:I

    const/16 v2, 0x91

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_1_20:I

    const/16 v2, 0x92

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_00:I

    const/16 v2, 0x93

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_01:I

    const/16 v2, 0x94

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_02:I

    const/16 v2, 0x95

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_03:I

    const/16 v2, 0x96

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_04:I

    const/16 v2, 0x97

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_05:I

    const/16 v2, 0x98

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_06:I

    const/16 v2, 0x99

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_07:I

    const/16 v2, 0x9a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_08:I

    const/16 v2, 0x9b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_09:I

    const/16 v2, 0x9c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_10:I

    const/16 v2, 0x9d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_11:I

    const/16 v2, 0x9e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_12:I

    const/16 v2, 0x9f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_13:I

    const/16 v2, 0xa0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_14:I

    const/16 v2, 0xa1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_15:I

    const/16 v2, 0xa2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_16:I

    const/16 v2, 0xa3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_17:I

    const/16 v2, 0xa4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_18:I

    const/16 v2, 0xa5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_19:I

    const/16 v2, 0xa6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red04_2_20:I

    const/16 v2, 0xa7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_00:I

    const/16 v2, 0xa8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_01:I

    const/16 v2, 0xa9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_02:I

    const/16 v2, 0xaa

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_03:I

    const/16 v2, 0xab

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_04:I

    const/16 v2, 0xac

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_05:I

    const/16 v2, 0xad

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_06:I

    const/16 v2, 0xae

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_07:I

    const/16 v2, 0xaf

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_08:I

    const/16 v2, 0xb0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_09:I

    const/16 v2, 0xb1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_10:I

    const/16 v2, 0xb2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_11:I

    const/16 v2, 0xb3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_12:I

    const/16 v2, 0xb4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_13:I

    const/16 v2, 0xb5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_14:I

    const/16 v2, 0xb6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_15:I

    const/16 v2, 0xb7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_16:I

    const/16 v2, 0xb8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_17:I

    const/16 v2, 0xb9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_18:I

    const/16 v2, 0xba

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_19:I

    const/16 v2, 0xbb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_1_20:I

    const/16 v2, 0xbc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_00:I

    const/16 v2, 0xbd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_01:I

    const/16 v2, 0xbe

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_02:I

    const/16 v2, 0xbf

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_03:I

    const/16 v2, 0xc0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_04:I

    const/16 v2, 0xc1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_05:I

    const/16 v2, 0xc2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_06:I

    const/16 v2, 0xc3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_07:I

    const/16 v2, 0xc4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_08:I

    const/16 v2, 0xc5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_09:I

    const/16 v2, 0xc6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_10:I

    const/16 v2, 0xc7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_11:I

    const/16 v2, 0xc8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_12:I

    const/16 v2, 0xc9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_13:I

    const/16 v2, 0xca

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_14:I

    const/16 v2, 0xcb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_15:I

    const/16 v2, 0xcc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_16:I

    const/16 v2, 0xcd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_17:I

    const/16 v2, 0xce

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_18:I

    const/16 v2, 0xcf

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_19:I

    const/16 v2, 0xd0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red05_2_20:I

    const/16 v2, 0xd1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_00:I

    const/16 v2, 0xd2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_01:I

    const/16 v2, 0xd3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_02:I

    const/16 v2, 0xd4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_03:I

    const/16 v2, 0xd5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_04:I

    const/16 v2, 0xd6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_05:I

    const/16 v2, 0xd7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_06:I

    const/16 v2, 0xd8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_07:I

    const/16 v2, 0xd9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_08:I

    const/16 v2, 0xda

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_09:I

    const/16 v2, 0xdb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_10:I

    const/16 v2, 0xdc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_11:I

    const/16 v2, 0xdd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_12:I

    const/16 v2, 0xde

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_13:I

    const/16 v2, 0xdf

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_14:I

    const/16 v2, 0xe0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_15:I

    const/16 v2, 0xe1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_16:I

    const/16 v2, 0xe2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_17:I

    const/16 v2, 0xe3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_18:I

    const/16 v2, 0xe4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_19:I

    const/16 v2, 0xe5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_1_20:I

    const/16 v2, 0xe6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_00:I

    const/16 v2, 0xe7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_01:I

    const/16 v2, 0xe8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_02:I

    const/16 v2, 0xe9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_03:I

    const/16 v2, 0xea

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_04:I

    const/16 v2, 0xeb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_05:I

    const/16 v2, 0xec

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_06:I

    const/16 v2, 0xed

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_07:I

    const/16 v2, 0xee

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_08:I

    const/16 v2, 0xef

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_09:I

    const/16 v2, 0xf0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_10:I

    const/16 v2, 0xf1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_11:I

    const/16 v2, 0xf2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_12:I

    const/16 v2, 0xf3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_13:I

    const/16 v2, 0xf4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_14:I

    const/16 v2, 0xf5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_15:I

    const/16 v2, 0xf6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_16:I

    const/16 v2, 0xf7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_17:I

    const/16 v2, 0xf8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_18:I

    const/16 v2, 0xf9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_19:I

    const/16 v2, 0xfa

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red06_2_20:I

    const/16 v2, 0xfb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_00:I

    const/16 v2, 0xfc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_01:I

    const/16 v2, 0xfd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_02:I

    const/16 v2, 0xfe

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_03:I

    const/16 v2, 0xff

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_04:I

    const/16 v2, 0x100

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_05:I

    const/16 v2, 0x101

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_06:I

    const/16 v2, 0x102

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_07:I

    const/16 v2, 0x103

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_08:I

    const/16 v2, 0x104

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_09:I

    const/16 v2, 0x105

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_10:I

    const/16 v2, 0x106

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_11:I

    const/16 v2, 0x107

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_12:I

    const/16 v2, 0x108

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_13:I

    const/16 v2, 0x109

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_14:I

    const/16 v2, 0x10a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_15:I

    const/16 v2, 0x10b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_16:I

    const/16 v2, 0x10c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_17:I

    const/16 v2, 0x10d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_18:I

    const/16 v2, 0x10e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_19:I

    const/16 v2, 0x10f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_1_20:I

    const/16 v2, 0x110

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_00:I

    const/16 v2, 0x111

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_01:I

    const/16 v2, 0x112

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_02:I

    const/16 v2, 0x113

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_03:I

    const/16 v2, 0x114

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_04:I

    const/16 v2, 0x115

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_05:I

    const/16 v2, 0x116

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_06:I

    const/16 v2, 0x117

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_07:I

    const/16 v2, 0x118

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_08:I

    const/16 v2, 0x119

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_09:I

    const/16 v2, 0x11a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_10:I

    const/16 v2, 0x11b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_11:I

    const/16 v2, 0x11c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_12:I

    const/16 v2, 0x11d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_13:I

    const/16 v2, 0x11e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_14:I

    const/16 v2, 0x11f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_15:I

    const/16 v2, 0x120

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_16:I

    const/16 v2, 0x121

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_17:I

    const/16 v2, 0x122

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_18:I

    const/16 v2, 0x123

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_19:I

    const/16 v2, 0x124

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red07_2_20:I

    const/16 v2, 0x125

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_00:I

    const/16 v2, 0x126

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_01:I

    const/16 v2, 0x127

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_02:I

    const/16 v2, 0x128

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_03:I

    const/16 v2, 0x129

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_04:I

    const/16 v2, 0x12a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_05:I

    const/16 v2, 0x12b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_06:I

    const/16 v2, 0x12c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_07:I

    const/16 v2, 0x12d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_08:I

    const/16 v2, 0x12e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_09:I

    const/16 v2, 0x12f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_10:I

    const/16 v2, 0x130

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_11:I

    const/16 v2, 0x131

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_12:I

    const/16 v2, 0x132

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_13:I

    const/16 v2, 0x133

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_14:I

    const/16 v2, 0x134

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_15:I

    const/16 v2, 0x135

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_16:I

    const/16 v2, 0x136

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_17:I

    const/16 v2, 0x137

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_18:I

    const/16 v2, 0x138

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_19:I

    const/16 v2, 0x139

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_1_20:I

    const/16 v2, 0x13a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_00:I

    const/16 v2, 0x13b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_01:I

    const/16 v2, 0x13c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_02:I

    const/16 v2, 0x13d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_03:I

    const/16 v2, 0x13e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_04:I

    const/16 v2, 0x13f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_05:I

    const/16 v2, 0x140

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_06:I

    const/16 v2, 0x141

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_07:I

    const/16 v2, 0x142

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_08:I

    const/16 v2, 0x143

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_09:I

    const/16 v2, 0x144

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_10:I

    const/16 v2, 0x145

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_11:I

    const/16 v2, 0x146

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_12:I

    const/16 v2, 0x147

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_13:I

    const/16 v2, 0x148

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_14:I

    const/16 v2, 0x149

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_15:I

    const/16 v2, 0x14a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_16:I

    const/16 v2, 0x14b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_17:I

    const/16 v2, 0x14c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_18:I

    const/16 v2, 0x14d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_19:I

    const/16 v2, 0x14e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red08_2_20:I

    const/16 v2, 0x14f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_00:I

    const/16 v2, 0x150

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_01:I

    const/16 v2, 0x151

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_02:I

    const/16 v2, 0x152

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_03:I

    const/16 v2, 0x153

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_04:I

    const/16 v2, 0x154

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_05:I

    const/16 v2, 0x155

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_06:I

    const/16 v2, 0x156

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_07:I

    const/16 v2, 0x157

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_08:I

    const/16 v2, 0x158

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_09:I

    const/16 v2, 0x159

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_10:I

    const/16 v2, 0x15a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_11:I

    const/16 v2, 0x15b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_12:I

    const/16 v2, 0x15c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_13:I

    const/16 v2, 0x15d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_14:I

    const/16 v2, 0x15e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_15:I

    const/16 v2, 0x15f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_16:I

    const/16 v2, 0x160

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_17:I

    const/16 v2, 0x161

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_18:I

    const/16 v2, 0x162

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_19:I

    const/16 v2, 0x163

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_1_20:I

    const/16 v2, 0x164

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_00:I

    const/16 v2, 0x165

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_01:I

    const/16 v2, 0x166

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_02:I

    const/16 v2, 0x167

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_03:I

    const/16 v2, 0x168

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_04:I

    const/16 v2, 0x169

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_05:I

    const/16 v2, 0x16a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_06:I

    const/16 v2, 0x16b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_07:I

    const/16 v2, 0x16c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_08:I

    const/16 v2, 0x16d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_09:I

    const/16 v2, 0x16e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_10:I

    const/16 v2, 0x16f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_11:I

    const/16 v2, 0x170

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_12:I

    const/16 v2, 0x171

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_13:I

    const/16 v2, 0x172

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_14:I

    const/16 v2, 0x173

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_15:I

    const/16 v2, 0x174

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_16:I

    const/16 v2, 0x175

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_17:I

    const/16 v2, 0x176

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_18:I

    const/16 v2, 0x177

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_19:I

    const/16 v2, 0x178

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red09_2_20:I

    const/16 v2, 0x179

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_00:I

    const/16 v2, 0x17a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_01:I

    const/16 v2, 0x17b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_02:I

    const/16 v2, 0x17c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_03:I

    const/16 v2, 0x17d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_04:I

    const/16 v2, 0x17e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_05:I

    const/16 v2, 0x17f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_06:I

    const/16 v2, 0x180

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_07:I

    const/16 v2, 0x181

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_08:I

    const/16 v2, 0x182

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_09:I

    const/16 v2, 0x183

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_10:I

    const/16 v2, 0x184

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_11:I

    const/16 v2, 0x185

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_12:I

    const/16 v2, 0x186

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_13:I

    const/16 v2, 0x187

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_14:I

    const/16 v2, 0x188

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_15:I

    const/16 v2, 0x189

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_16:I

    const/16 v2, 0x18a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_17:I

    const/16 v2, 0x18b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_18:I

    const/16 v2, 0x18c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_19:I

    const/16 v2, 0x18d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_1_20:I

    const/16 v2, 0x18e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_00:I

    const/16 v2, 0x18f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_01:I

    const/16 v2, 0x190

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_02:I

    const/16 v2, 0x191

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_03:I

    const/16 v2, 0x192

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_04:I

    const/16 v2, 0x193

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_05:I

    const/16 v2, 0x194

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_06:I

    const/16 v2, 0x195

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_07:I

    const/16 v2, 0x196

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_08:I

    const/16 v2, 0x197

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_09:I

    const/16 v2, 0x198

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_10:I

    const/16 v2, 0x199

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_11:I

    const/16 v2, 0x19a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_12:I

    const/16 v2, 0x19b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_13:I

    const/16 v2, 0x19c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_14:I

    const/16 v2, 0x19d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_15:I

    const/16 v2, 0x19e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_16:I

    const/16 v2, 0x19f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_17:I

    const/16 v2, 0x1a0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_18:I

    const/16 v2, 0x1a1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_19:I

    const/16 v2, 0x1a2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red10_2_20:I

    const/16 v2, 0x1a3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_00:I

    const/16 v2, 0x1a4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_01:I

    const/16 v2, 0x1a5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_02:I

    const/16 v2, 0x1a6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_03:I

    const/16 v2, 0x1a7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_04:I

    const/16 v2, 0x1a8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_05:I

    const/16 v2, 0x1a9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_06:I

    const/16 v2, 0x1aa

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_07:I

    const/16 v2, 0x1ab

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_08:I

    const/16 v2, 0x1ac

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_09:I

    const/16 v2, 0x1ad

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_10:I

    const/16 v2, 0x1ae

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_11:I

    const/16 v2, 0x1af

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_12:I

    const/16 v2, 0x1b0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_13:I

    const/16 v2, 0x1b1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_14:I

    const/16 v2, 0x1b2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_15:I

    const/16 v2, 0x1b3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_16:I

    const/16 v2, 0x1b4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_17:I

    const/16 v2, 0x1b5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_18:I

    const/16 v2, 0x1b6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_19:I

    const/16 v2, 0x1b7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_1_20:I

    const/16 v2, 0x1b8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_00:I

    const/16 v2, 0x1b9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_01:I

    const/16 v2, 0x1ba

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_02:I

    const/16 v2, 0x1bb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_03:I

    const/16 v2, 0x1bc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_04:I

    const/16 v2, 0x1bd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_05:I

    const/16 v2, 0x1be

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_06:I

    const/16 v2, 0x1bf

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_07:I

    const/16 v2, 0x1c0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_08:I

    const/16 v2, 0x1c1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_09:I

    const/16 v2, 0x1c2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_10:I

    const/16 v2, 0x1c3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_11:I

    const/16 v2, 0x1c4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_12:I

    const/16 v2, 0x1c5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_13:I

    const/16 v2, 0x1c6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_14:I

    const/16 v2, 0x1c7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_15:I

    const/16 v2, 0x1c8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_16:I

    const/16 v2, 0x1c9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_17:I

    const/16 v2, 0x1ca

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_18:I

    const/16 v2, 0x1cb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_19:I

    const/16 v2, 0x1cc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red11_2_20:I

    const/16 v2, 0x1cd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_00:I

    const/16 v2, 0x1ce

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_01:I

    const/16 v2, 0x1cf

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_02:I

    const/16 v2, 0x1d0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_03:I

    const/16 v2, 0x1d1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_04:I

    const/16 v2, 0x1d2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_05:I

    const/16 v2, 0x1d3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_06:I

    const/16 v2, 0x1d4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_07:I

    const/16 v2, 0x1d5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_08:I

    const/16 v2, 0x1d6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_09:I

    const/16 v2, 0x1d7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_10:I

    const/16 v2, 0x1d8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_11:I

    const/16 v2, 0x1d9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_12:I

    const/16 v2, 0x1da

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_13:I

    const/16 v2, 0x1db

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_14:I

    const/16 v2, 0x1dc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_15:I

    const/16 v2, 0x1dd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_16:I

    const/16 v2, 0x1de

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_17:I

    const/16 v2, 0x1df

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_18:I

    const/16 v2, 0x1e0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_19:I

    const/16 v2, 0x1e1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_1_20:I

    const/16 v2, 0x1e2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_00:I

    const/16 v2, 0x1e3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_01:I

    const/16 v2, 0x1e4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_02:I

    const/16 v2, 0x1e5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_03:I

    const/16 v2, 0x1e6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_04:I

    const/16 v2, 0x1e7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_05:I

    const/16 v2, 0x1e8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_06:I

    const/16 v2, 0x1e9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_07:I

    const/16 v2, 0x1ea

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_08:I

    const/16 v2, 0x1eb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_09:I

    const/16 v2, 0x1ec

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_10:I

    const/16 v2, 0x1ed

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_11:I

    const/16 v2, 0x1ee

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_12:I

    const/16 v2, 0x1ef

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_13:I

    const/16 v2, 0x1f0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_14:I

    const/16 v2, 0x1f1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_15:I

    const/16 v2, 0x1f2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_16:I

    const/16 v2, 0x1f3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_17:I

    const/16 v2, 0x1f4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_18:I

    const/16 v2, 0x1f5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_19:I

    const/16 v2, 0x1f6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red12_2_20:I

    const/16 v2, 0x1f7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_00:I

    const/16 v2, 0x1f8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_01:I

    const/16 v2, 0x1f9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_02:I

    const/16 v2, 0x1fa

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_03:I

    const/16 v2, 0x1fb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_04:I

    const/16 v2, 0x1fc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_05:I

    const/16 v2, 0x1fd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_06:I

    const/16 v2, 0x1fe

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_07:I

    const/16 v2, 0x1ff

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_08:I

    const/16 v2, 0x200

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_09:I

    const/16 v2, 0x201

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_10:I

    const/16 v2, 0x202

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_11:I

    const/16 v2, 0x203

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_12:I

    const/16 v2, 0x204

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_13:I

    const/16 v2, 0x205

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_14:I

    const/16 v2, 0x206

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_15:I

    const/16 v2, 0x207

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_16:I

    const/16 v2, 0x208

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_17:I

    const/16 v2, 0x209

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_18:I

    const/16 v2, 0x20a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_19:I

    const/16 v2, 0x20b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_1_20:I

    const/16 v2, 0x20c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_00:I

    const/16 v2, 0x20d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_01:I

    const/16 v2, 0x20e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_02:I

    const/16 v2, 0x20f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_03:I

    const/16 v2, 0x210

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_04:I

    const/16 v2, 0x211

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_05:I

    const/16 v2, 0x212

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_06:I

    const/16 v2, 0x213

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_07:I

    const/16 v2, 0x214

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_08:I

    const/16 v2, 0x215

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_09:I

    const/16 v2, 0x216

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_10:I

    const/16 v2, 0x217

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_11:I

    const/16 v2, 0x218

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_12:I

    const/16 v2, 0x219

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_13:I

    const/16 v2, 0x21a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_14:I

    const/16 v2, 0x21b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_15:I

    const/16 v2, 0x21c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_16:I

    const/16 v2, 0x21d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_17:I

    const/16 v2, 0x21e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_18:I

    const/16 v2, 0x21f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_19:I

    const/16 v2, 0x220

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red13_2_20:I

    const/16 v2, 0x221

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_00:I

    const/16 v2, 0x222

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_01:I

    const/16 v2, 0x223

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_02:I

    const/16 v2, 0x224

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_03:I

    const/16 v2, 0x225

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_04:I

    const/16 v2, 0x226

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_05:I

    const/16 v2, 0x227

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_06:I

    const/16 v2, 0x228

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_07:I

    const/16 v2, 0x229

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_08:I

    const/16 v2, 0x22a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_09:I

    const/16 v2, 0x22b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_10:I

    const/16 v2, 0x22c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_11:I

    const/16 v2, 0x22d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_12:I

    const/16 v2, 0x22e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_13:I

    const/16 v2, 0x22f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_14:I

    const/16 v2, 0x230

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_15:I

    const/16 v2, 0x231

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_16:I

    const/16 v2, 0x232

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_17:I

    const/16 v2, 0x233

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_18:I

    const/16 v2, 0x234

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_19:I

    const/16 v2, 0x235

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_1_20:I

    const/16 v2, 0x236

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_00:I

    const/16 v2, 0x237

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_01:I

    const/16 v2, 0x238

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_02:I

    const/16 v2, 0x239

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_03:I

    const/16 v2, 0x23a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_04:I

    const/16 v2, 0x23b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_05:I

    const/16 v2, 0x23c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_06:I

    const/16 v2, 0x23d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_07:I

    const/16 v2, 0x23e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_08:I

    const/16 v2, 0x23f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_09:I

    const/16 v2, 0x240

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_10:I

    const/16 v2, 0x241

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_11:I

    const/16 v2, 0x242

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_12:I

    const/16 v2, 0x243

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_13:I

    const/16 v2, 0x244

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_14:I

    const/16 v2, 0x245

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_15:I

    const/16 v2, 0x246

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_16:I

    const/16 v2, 0x247

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_17:I

    const/16 v2, 0x248

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_18:I

    const/16 v2, 0x249

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_19:I

    const/16 v2, 0x24a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red14_2_20:I

    const/16 v2, 0x24b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_00:I

    const/16 v2, 0x24c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_01:I

    const/16 v2, 0x24d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_02:I

    const/16 v2, 0x24e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_03:I

    const/16 v2, 0x24f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_04:I

    const/16 v2, 0x250

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_05:I

    const/16 v2, 0x251

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_06:I

    const/16 v2, 0x252

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_07:I

    const/16 v2, 0x253

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_08:I

    const/16 v2, 0x254

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_09:I

    const/16 v2, 0x255

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_10:I

    const/16 v2, 0x256

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_11:I

    const/16 v2, 0x257

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_12:I

    const/16 v2, 0x258

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_13:I

    const/16 v2, 0x259

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_14:I

    const/16 v2, 0x25a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_15:I

    const/16 v2, 0x25b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_16:I

    const/16 v2, 0x25c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_17:I

    const/16 v2, 0x25d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_18:I

    const/16 v2, 0x25e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_19:I

    const/16 v2, 0x25f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_1_20:I

    const/16 v2, 0x260

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_00:I

    const/16 v2, 0x261

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_01:I

    const/16 v2, 0x262

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_02:I

    const/16 v2, 0x263

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_03:I

    const/16 v2, 0x264

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_04:I

    const/16 v2, 0x265

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_05:I

    const/16 v2, 0x266

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_06:I

    const/16 v2, 0x267

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_07:I

    const/16 v2, 0x268

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_08:I

    const/16 v2, 0x269

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_09:I

    const/16 v2, 0x26a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_10:I

    const/16 v2, 0x26b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_11:I

    const/16 v2, 0x26c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_12:I

    const/16 v2, 0x26d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_13:I

    const/16 v2, 0x26e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_14:I

    const/16 v2, 0x26f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_15:I

    const/16 v2, 0x270

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_16:I

    const/16 v2, 0x271

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_17:I

    const/16 v2, 0x272

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_18:I

    const/16 v2, 0x273

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_19:I

    const/16 v2, 0x274

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red15_2_20:I

    const/16 v2, 0x275

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_00:I

    const/16 v2, 0x276

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_01:I

    const/16 v2, 0x277

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_02:I

    const/16 v2, 0x278

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_03:I

    const/16 v2, 0x279

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_04:I

    const/16 v2, 0x27a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_05:I

    const/16 v2, 0x27b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_06:I

    const/16 v2, 0x27c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_07:I

    const/16 v2, 0x27d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_08:I

    const/16 v2, 0x27e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_09:I

    const/16 v2, 0x27f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_10:I

    const/16 v2, 0x280

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_11:I

    const/16 v2, 0x281

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_12:I

    const/16 v2, 0x282

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_13:I

    const/16 v2, 0x283

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_14:I

    const/16 v2, 0x284

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_15:I

    const/16 v2, 0x285

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_16:I

    const/16 v2, 0x286

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_17:I

    const/16 v2, 0x287

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_18:I

    const/16 v2, 0x288

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_19:I

    const/16 v2, 0x289

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_1_20:I

    const/16 v2, 0x28a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_00:I

    const/16 v2, 0x28b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_01:I

    const/16 v2, 0x28c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_02:I

    const/16 v2, 0x28d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_03:I

    const/16 v2, 0x28e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_04:I

    const/16 v2, 0x28f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_05:I

    const/16 v2, 0x290

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_06:I

    const/16 v2, 0x291

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_07:I

    const/16 v2, 0x292

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_08:I

    const/16 v2, 0x293

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_09:I

    const/16 v2, 0x294

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_10:I

    const/16 v2, 0x295

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_11:I

    const/16 v2, 0x296

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_12:I

    const/16 v2, 0x297

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_13:I

    const/16 v2, 0x298

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_14:I

    const/16 v2, 0x299

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_15:I

    const/16 v2, 0x29a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_16:I

    const/16 v2, 0x29b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_17:I

    const/16 v2, 0x29c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_18:I

    const/16 v2, 0x29d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_19:I

    const/16 v2, 0x29e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red16_2_20:I

    const/16 v2, 0x29f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_00:I

    const/16 v2, 0x2a0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_01:I

    const/16 v2, 0x2a1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_02:I

    const/16 v2, 0x2a2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_03:I

    const/16 v2, 0x2a3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_04:I

    const/16 v2, 0x2a4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_05:I

    const/16 v2, 0x2a5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_06:I

    const/16 v2, 0x2a6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_07:I

    const/16 v2, 0x2a7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_08:I

    const/16 v2, 0x2a8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_09:I

    const/16 v2, 0x2a9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_10:I

    const/16 v2, 0x2aa

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_11:I

    const/16 v2, 0x2ab

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_12:I

    const/16 v2, 0x2ac

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_13:I

    const/16 v2, 0x2ad

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_14:I

    const/16 v2, 0x2ae

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_15:I

    const/16 v2, 0x2af

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_16:I

    const/16 v2, 0x2b0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_17:I

    const/16 v2, 0x2b1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_18:I

    const/16 v2, 0x2b2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_19:I

    const/16 v2, 0x2b3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_1_20:I

    const/16 v2, 0x2b4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_00:I

    const/16 v2, 0x2b5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_01:I

    const/16 v2, 0x2b6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_02:I

    const/16 v2, 0x2b7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_03:I

    const/16 v2, 0x2b8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_04:I

    const/16 v2, 0x2b9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_05:I

    const/16 v2, 0x2ba

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_06:I

    const/16 v2, 0x2bb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_07:I

    const/16 v2, 0x2bc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_08:I

    const/16 v2, 0x2bd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_09:I

    const/16 v2, 0x2be

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_10:I

    const/16 v2, 0x2bf

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_11:I

    const/16 v2, 0x2c0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_12:I

    const/16 v2, 0x2c1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_13:I

    const/16 v2, 0x2c2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_14:I

    const/16 v2, 0x2c3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_15:I

    const/16 v2, 0x2c4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_16:I

    const/16 v2, 0x2c5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_17:I

    const/16 v2, 0x2c6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_18:I

    const/16 v2, 0x2c7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_19:I

    const/16 v2, 0x2c8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red17_2_20:I

    const/16 v2, 0x2c9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_00:I

    const/16 v2, 0x2ca

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_01:I

    const/16 v2, 0x2cb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_02:I

    const/16 v2, 0x2cc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_03:I

    const/16 v2, 0x2cd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_04:I

    const/16 v2, 0x2ce

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_05:I

    const/16 v2, 0x2cf

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_06:I

    const/16 v2, 0x2d0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_07:I

    const/16 v2, 0x2d1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_08:I

    const/16 v2, 0x2d2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_09:I

    const/16 v2, 0x2d3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_10:I

    const/16 v2, 0x2d4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_11:I

    const/16 v2, 0x2d5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_12:I

    const/16 v2, 0x2d6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_13:I

    const/16 v2, 0x2d7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_14:I

    const/16 v2, 0x2d8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_15:I

    const/16 v2, 0x2d9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_16:I

    const/16 v2, 0x2da

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_17:I

    const/16 v2, 0x2db

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_18:I

    const/16 v2, 0x2dc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_19:I

    const/16 v2, 0x2dd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_1_20:I

    const/16 v2, 0x2de

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_00:I

    const/16 v2, 0x2df

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_01:I

    const/16 v2, 0x2e0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_02:I

    const/16 v2, 0x2e1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_03:I

    const/16 v2, 0x2e2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_04:I

    const/16 v2, 0x2e3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_05:I

    const/16 v2, 0x2e4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_06:I

    const/16 v2, 0x2e5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_07:I

    const/16 v2, 0x2e6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_08:I

    const/16 v2, 0x2e7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_09:I

    const/16 v2, 0x2e8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_10:I

    const/16 v2, 0x2e9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_11:I

    const/16 v2, 0x2ea

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_12:I

    const/16 v2, 0x2eb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_13:I

    const/16 v2, 0x2ec

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_14:I

    const/16 v2, 0x2ed

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_15:I

    const/16 v2, 0x2ee

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_16:I

    const/16 v2, 0x2ef

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_17:I

    const/16 v2, 0x2f0

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_18:I

    const/16 v2, 0x2f1

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_19:I

    const/16 v2, 0x2f2

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red18_2_20:I

    const/16 v2, 0x2f3

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_00:I

    const/16 v2, 0x2f4

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_01:I

    const/16 v2, 0x2f5

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_02:I

    const/16 v2, 0x2f6

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_03:I

    const/16 v2, 0x2f7

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_04:I

    const/16 v2, 0x2f8

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_05:I

    const/16 v2, 0x2f9

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_06:I

    const/16 v2, 0x2fa

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_07:I

    const/16 v2, 0x2fb

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_08:I

    const/16 v2, 0x2fc

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_09:I

    const/16 v2, 0x2fd

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_10:I

    const/16 v2, 0x2fe

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_11:I

    const/16 v2, 0x2ff

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_12:I

    const/16 v2, 0x300

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_13:I

    const/16 v2, 0x301

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_14:I

    const/16 v2, 0x302

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_15:I

    const/16 v2, 0x303

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_16:I

    const/16 v2, 0x304

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_17:I

    const/16 v2, 0x305

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_18:I

    const/16 v2, 0x306

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_19:I

    const/16 v2, 0x307

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_1_20:I

    const/16 v2, 0x308

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_00:I

    const/16 v2, 0x309

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_01:I

    const/16 v2, 0x30a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_02:I

    const/16 v2, 0x30b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_03:I

    const/16 v2, 0x30c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_04:I

    const/16 v2, 0x30d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_05:I

    const/16 v2, 0x30e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_06:I

    const/16 v2, 0x30f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_07:I

    const/16 v2, 0x310

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_08:I

    const/16 v2, 0x311

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_09:I

    const/16 v2, 0x312

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_10:I

    const/16 v2, 0x313

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_11:I

    const/16 v2, 0x314

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_12:I

    const/16 v2, 0x315

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_13:I

    const/16 v2, 0x316

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_14:I

    const/16 v2, 0x317

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_15:I

    const/16 v2, 0x318

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_16:I

    const/16 v2, 0x319

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_17:I

    const/16 v2, 0x31a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_18:I

    const/16 v2, 0x31b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_19:I

    const/16 v2, 0x31c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red19_2_20:I

    const/16 v2, 0x31d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_00:I

    const/16 v2, 0x31e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_01:I

    const/16 v2, 0x31f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_02:I

    const/16 v2, 0x320

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_03:I

    const/16 v2, 0x321

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_04:I

    const/16 v2, 0x322

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_05:I

    const/16 v2, 0x323

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_06:I

    const/16 v2, 0x324

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_07:I

    const/16 v2, 0x325

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_08:I

    const/16 v2, 0x326

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_09:I

    const/16 v2, 0x327

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_10:I

    const/16 v2, 0x328

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_11:I

    const/16 v2, 0x329

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_12:I

    const/16 v2, 0x32a

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_13:I

    const/16 v2, 0x32b

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_14:I

    const/16 v2, 0x32c

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_15:I

    const/16 v2, 0x32d

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_16:I

    const/16 v2, 0x32e

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_17:I

    const/16 v2, 0x32f

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_18:I

    const/16 v2, 0x330

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_19:I

    const/16 v2, 0x331

    aput v0, v1, v2

    sget v0, Lcom/android/settings/R$drawable;->rog_red20_1_20:I

    const/16 v2, 0x332

    aput v0, v1, v2

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mFingerprintStepId:[I

    .line 930
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 934
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawFinishMask:Z

    .line 37
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawInvalidProgress:Z

    .line 38
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mShowSecondPhaseImage:Z

    const/16 v0, 0x333

    new-array v0, v0, [I

    .line 43
    sget v1, Lcom/android/settings/R$drawable;->rog_red01_1_00:I

    aput v1, v0, p2

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_01:I

    const/4 v1, 0x1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_02:I

    const/4 v1, 0x2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_03:I

    const/4 v1, 0x3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_04:I

    const/4 v1, 0x4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_05:I

    const/4 v1, 0x5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_06:I

    const/4 v1, 0x6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_07:I

    const/4 v1, 0x7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_08:I

    const/16 v1, 0x8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_09:I

    const/16 v1, 0x9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_10:I

    const/16 v1, 0xa

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_11:I

    const/16 v1, 0xb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_12:I

    const/16 v1, 0xc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_13:I

    const/16 v1, 0xd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_14:I

    const/16 v1, 0xe

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_15:I

    const/16 v1, 0xf

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_16:I

    const/16 v1, 0x10

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_17:I

    const/16 v1, 0x11

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_18:I

    const/16 v1, 0x12

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_19:I

    const/16 v1, 0x13

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_20:I

    const/16 v1, 0x14

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_00:I

    const/16 v1, 0x15

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_01:I

    const/16 v1, 0x16

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_02:I

    const/16 v1, 0x17

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_03:I

    const/16 v1, 0x18

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_04:I

    const/16 v1, 0x19

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_05:I

    const/16 v1, 0x1a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_06:I

    const/16 v1, 0x1b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_07:I

    const/16 v1, 0x1c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_08:I

    const/16 v1, 0x1d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_09:I

    const/16 v1, 0x1e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_10:I

    const/16 v1, 0x1f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_11:I

    const/16 v1, 0x20

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_12:I

    const/16 v1, 0x21

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_13:I

    const/16 v1, 0x22

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_14:I

    const/16 v1, 0x23

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_15:I

    const/16 v1, 0x24

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_16:I

    const/16 v1, 0x25

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_17:I

    const/16 v1, 0x26

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_18:I

    const/16 v1, 0x27

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_19:I

    const/16 v1, 0x28

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_20:I

    const/16 v1, 0x29

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_00:I

    const/16 v1, 0x2a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_01:I

    const/16 v1, 0x2b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_02:I

    const/16 v1, 0x2c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_03:I

    const/16 v1, 0x2d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_04:I

    const/16 v1, 0x2e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_05:I

    const/16 v1, 0x2f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_06:I

    const/16 v1, 0x30

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_07:I

    const/16 v1, 0x31

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_08:I

    const/16 v1, 0x32

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_09:I

    const/16 v1, 0x33

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_10:I

    const/16 v1, 0x34

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_11:I

    const/16 v1, 0x35

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_12:I

    const/16 v1, 0x36

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_13:I

    const/16 v1, 0x37

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_14:I

    const/16 v1, 0x38

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_15:I

    const/16 v1, 0x39

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_16:I

    const/16 v1, 0x3a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_17:I

    const/16 v1, 0x3b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_18:I

    const/16 v1, 0x3c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_19:I

    const/16 v1, 0x3d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_20:I

    const/16 v1, 0x3e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_00:I

    const/16 v1, 0x3f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_01:I

    const/16 v1, 0x40

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_02:I

    const/16 v1, 0x41

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_03:I

    const/16 v1, 0x42

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_04:I

    const/16 v1, 0x43

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_05:I

    const/16 v1, 0x44

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_06:I

    const/16 v1, 0x45

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_07:I

    const/16 v1, 0x46

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_08:I

    const/16 v1, 0x47

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_09:I

    const/16 v1, 0x48

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_10:I

    const/16 v1, 0x49

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_11:I

    const/16 v1, 0x4a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_12:I

    const/16 v1, 0x4b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_13:I

    const/16 v1, 0x4c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_14:I

    const/16 v1, 0x4d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_15:I

    const/16 v1, 0x4e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_16:I

    const/16 v1, 0x4f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_17:I

    const/16 v1, 0x50

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_18:I

    const/16 v1, 0x51

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_19:I

    const/16 v1, 0x52

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_20:I

    const/16 v1, 0x53

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_00:I

    const/16 v1, 0x54

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_01:I

    const/16 v1, 0x55

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_02:I

    const/16 v1, 0x56

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_03:I

    const/16 v1, 0x57

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_04:I

    const/16 v1, 0x58

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_05:I

    const/16 v1, 0x59

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_06:I

    const/16 v1, 0x5a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_07:I

    const/16 v1, 0x5b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_08:I

    const/16 v1, 0x5c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_09:I

    const/16 v1, 0x5d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_10:I

    const/16 v1, 0x5e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_11:I

    const/16 v1, 0x5f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_12:I

    const/16 v1, 0x60

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_13:I

    const/16 v1, 0x61

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_14:I

    const/16 v1, 0x62

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_15:I

    const/16 v1, 0x63

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_16:I

    const/16 v1, 0x64

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_17:I

    const/16 v1, 0x65

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_18:I

    const/16 v1, 0x66

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_19:I

    const/16 v1, 0x67

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_20:I

    const/16 v1, 0x68

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_00:I

    const/16 v1, 0x69

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_01:I

    const/16 v1, 0x6a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_02:I

    const/16 v1, 0x6b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_03:I

    const/16 v1, 0x6c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_04:I

    const/16 v1, 0x6d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_05:I

    const/16 v1, 0x6e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_06:I

    const/16 v1, 0x6f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_07:I

    const/16 v1, 0x70

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_08:I

    const/16 v1, 0x71

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_09:I

    const/16 v1, 0x72

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_10:I

    const/16 v1, 0x73

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_11:I

    const/16 v1, 0x74

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_12:I

    const/16 v1, 0x75

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_13:I

    const/16 v1, 0x76

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_14:I

    const/16 v1, 0x77

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_15:I

    const/16 v1, 0x78

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_16:I

    const/16 v1, 0x79

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_17:I

    const/16 v1, 0x7a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_18:I

    const/16 v1, 0x7b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_19:I

    const/16 v1, 0x7c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_20:I

    const/16 v1, 0x7d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_00:I

    const/16 v1, 0x7e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_01:I

    const/16 v1, 0x7f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_02:I

    const/16 v1, 0x80

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_03:I

    const/16 v1, 0x81

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_04:I

    const/16 v1, 0x82

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_05:I

    const/16 v1, 0x83

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_06:I

    const/16 v1, 0x84

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_07:I

    const/16 v1, 0x85

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_08:I

    const/16 v1, 0x86

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_09:I

    const/16 v1, 0x87

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_10:I

    const/16 v1, 0x88

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_11:I

    const/16 v1, 0x89

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_12:I

    const/16 v1, 0x8a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_13:I

    const/16 v1, 0x8b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_14:I

    const/16 v1, 0x8c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_15:I

    const/16 v1, 0x8d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_16:I

    const/16 v1, 0x8e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_17:I

    const/16 v1, 0x8f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_18:I

    const/16 v1, 0x90

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_19:I

    const/16 v1, 0x91

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_20:I

    const/16 v1, 0x92

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_00:I

    const/16 v1, 0x93

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_01:I

    const/16 v1, 0x94

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_02:I

    const/16 v1, 0x95

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_03:I

    const/16 v1, 0x96

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_04:I

    const/16 v1, 0x97

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_05:I

    const/16 v1, 0x98

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_06:I

    const/16 v1, 0x99

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_07:I

    const/16 v1, 0x9a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_08:I

    const/16 v1, 0x9b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_09:I

    const/16 v1, 0x9c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_10:I

    const/16 v1, 0x9d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_11:I

    const/16 v1, 0x9e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_12:I

    const/16 v1, 0x9f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_13:I

    const/16 v1, 0xa0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_14:I

    const/16 v1, 0xa1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_15:I

    const/16 v1, 0xa2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_16:I

    const/16 v1, 0xa3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_17:I

    const/16 v1, 0xa4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_18:I

    const/16 v1, 0xa5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_19:I

    const/16 v1, 0xa6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_20:I

    const/16 v1, 0xa7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_00:I

    const/16 v1, 0xa8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_01:I

    const/16 v1, 0xa9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_02:I

    const/16 v1, 0xaa

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_03:I

    const/16 v1, 0xab

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_04:I

    const/16 v1, 0xac

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_05:I

    const/16 v1, 0xad

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_06:I

    const/16 v1, 0xae

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_07:I

    const/16 v1, 0xaf

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_08:I

    const/16 v1, 0xb0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_09:I

    const/16 v1, 0xb1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_10:I

    const/16 v1, 0xb2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_11:I

    const/16 v1, 0xb3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_12:I

    const/16 v1, 0xb4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_13:I

    const/16 v1, 0xb5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_14:I

    const/16 v1, 0xb6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_15:I

    const/16 v1, 0xb7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_16:I

    const/16 v1, 0xb8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_17:I

    const/16 v1, 0xb9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_18:I

    const/16 v1, 0xba

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_19:I

    const/16 v1, 0xbb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_20:I

    const/16 v1, 0xbc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_00:I

    const/16 v1, 0xbd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_01:I

    const/16 v1, 0xbe

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_02:I

    const/16 v1, 0xbf

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_03:I

    const/16 v1, 0xc0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_04:I

    const/16 v1, 0xc1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_05:I

    const/16 v1, 0xc2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_06:I

    const/16 v1, 0xc3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_07:I

    const/16 v1, 0xc4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_08:I

    const/16 v1, 0xc5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_09:I

    const/16 v1, 0xc6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_10:I

    const/16 v1, 0xc7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_11:I

    const/16 v1, 0xc8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_12:I

    const/16 v1, 0xc9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_13:I

    const/16 v1, 0xca

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_14:I

    const/16 v1, 0xcb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_15:I

    const/16 v1, 0xcc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_16:I

    const/16 v1, 0xcd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_17:I

    const/16 v1, 0xce

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_18:I

    const/16 v1, 0xcf

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_19:I

    const/16 v1, 0xd0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_20:I

    const/16 v1, 0xd1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_00:I

    const/16 v1, 0xd2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_01:I

    const/16 v1, 0xd3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_02:I

    const/16 v1, 0xd4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_03:I

    const/16 v1, 0xd5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_04:I

    const/16 v1, 0xd6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_05:I

    const/16 v1, 0xd7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_06:I

    const/16 v1, 0xd8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_07:I

    const/16 v1, 0xd9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_08:I

    const/16 v1, 0xda

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_09:I

    const/16 v1, 0xdb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_10:I

    const/16 v1, 0xdc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_11:I

    const/16 v1, 0xdd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_12:I

    const/16 v1, 0xde

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_13:I

    const/16 v1, 0xdf

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_14:I

    const/16 v1, 0xe0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_15:I

    const/16 v1, 0xe1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_16:I

    const/16 v1, 0xe2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_17:I

    const/16 v1, 0xe3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_18:I

    const/16 v1, 0xe4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_19:I

    const/16 v1, 0xe5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_20:I

    const/16 v1, 0xe6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_00:I

    const/16 v1, 0xe7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_01:I

    const/16 v1, 0xe8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_02:I

    const/16 v1, 0xe9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_03:I

    const/16 v1, 0xea

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_04:I

    const/16 v1, 0xeb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_05:I

    const/16 v1, 0xec

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_06:I

    const/16 v1, 0xed

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_07:I

    const/16 v1, 0xee

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_08:I

    const/16 v1, 0xef

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_09:I

    const/16 v1, 0xf0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_10:I

    const/16 v1, 0xf1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_11:I

    const/16 v1, 0xf2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_12:I

    const/16 v1, 0xf3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_13:I

    const/16 v1, 0xf4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_14:I

    const/16 v1, 0xf5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_15:I

    const/16 v1, 0xf6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_16:I

    const/16 v1, 0xf7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_17:I

    const/16 v1, 0xf8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_18:I

    const/16 v1, 0xf9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_19:I

    const/16 v1, 0xfa

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_20:I

    const/16 v1, 0xfb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_00:I

    const/16 v1, 0xfc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_01:I

    const/16 v1, 0xfd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_02:I

    const/16 v1, 0xfe

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_03:I

    const/16 v1, 0xff

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_04:I

    const/16 v1, 0x100

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_05:I

    const/16 v1, 0x101

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_06:I

    const/16 v1, 0x102

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_07:I

    const/16 v1, 0x103

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_08:I

    const/16 v1, 0x104

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_09:I

    const/16 v1, 0x105

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_10:I

    const/16 v1, 0x106

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_11:I

    const/16 v1, 0x107

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_12:I

    const/16 v1, 0x108

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_13:I

    const/16 v1, 0x109

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_14:I

    const/16 v1, 0x10a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_15:I

    const/16 v1, 0x10b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_16:I

    const/16 v1, 0x10c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_17:I

    const/16 v1, 0x10d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_18:I

    const/16 v1, 0x10e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_19:I

    const/16 v1, 0x10f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_20:I

    const/16 v1, 0x110

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_00:I

    const/16 v1, 0x111

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_01:I

    const/16 v1, 0x112

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_02:I

    const/16 v1, 0x113

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_03:I

    const/16 v1, 0x114

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_04:I

    const/16 v1, 0x115

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_05:I

    const/16 v1, 0x116

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_06:I

    const/16 v1, 0x117

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_07:I

    const/16 v1, 0x118

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_08:I

    const/16 v1, 0x119

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_09:I

    const/16 v1, 0x11a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_10:I

    const/16 v1, 0x11b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_11:I

    const/16 v1, 0x11c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_12:I

    const/16 v1, 0x11d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_13:I

    const/16 v1, 0x11e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_14:I

    const/16 v1, 0x11f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_15:I

    const/16 v1, 0x120

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_16:I

    const/16 v1, 0x121

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_17:I

    const/16 v1, 0x122

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_18:I

    const/16 v1, 0x123

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_19:I

    const/16 v1, 0x124

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_20:I

    const/16 v1, 0x125

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_00:I

    const/16 v1, 0x126

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_01:I

    const/16 v1, 0x127

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_02:I

    const/16 v1, 0x128

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_03:I

    const/16 v1, 0x129

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_04:I

    const/16 v1, 0x12a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_05:I

    const/16 v1, 0x12b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_06:I

    const/16 v1, 0x12c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_07:I

    const/16 v1, 0x12d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_08:I

    const/16 v1, 0x12e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_09:I

    const/16 v1, 0x12f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_10:I

    const/16 v1, 0x130

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_11:I

    const/16 v1, 0x131

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_12:I

    const/16 v1, 0x132

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_13:I

    const/16 v1, 0x133

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_14:I

    const/16 v1, 0x134

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_15:I

    const/16 v1, 0x135

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_16:I

    const/16 v1, 0x136

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_17:I

    const/16 v1, 0x137

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_18:I

    const/16 v1, 0x138

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_19:I

    const/16 v1, 0x139

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_20:I

    const/16 v1, 0x13a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_00:I

    const/16 v1, 0x13b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_01:I

    const/16 v1, 0x13c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_02:I

    const/16 v1, 0x13d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_03:I

    const/16 v1, 0x13e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_04:I

    const/16 v1, 0x13f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_05:I

    const/16 v1, 0x140

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_06:I

    const/16 v1, 0x141

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_07:I

    const/16 v1, 0x142

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_08:I

    const/16 v1, 0x143

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_09:I

    const/16 v1, 0x144

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_10:I

    const/16 v1, 0x145

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_11:I

    const/16 v1, 0x146

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_12:I

    const/16 v1, 0x147

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_13:I

    const/16 v1, 0x148

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_14:I

    const/16 v1, 0x149

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_15:I

    const/16 v1, 0x14a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_16:I

    const/16 v1, 0x14b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_17:I

    const/16 v1, 0x14c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_18:I

    const/16 v1, 0x14d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_19:I

    const/16 v1, 0x14e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_20:I

    const/16 v1, 0x14f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_00:I

    const/16 v1, 0x150

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_01:I

    const/16 v1, 0x151

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_02:I

    const/16 v1, 0x152

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_03:I

    const/16 v1, 0x153

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_04:I

    const/16 v1, 0x154

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_05:I

    const/16 v1, 0x155

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_06:I

    const/16 v1, 0x156

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_07:I

    const/16 v1, 0x157

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_08:I

    const/16 v1, 0x158

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_09:I

    const/16 v1, 0x159

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_10:I

    const/16 v1, 0x15a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_11:I

    const/16 v1, 0x15b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_12:I

    const/16 v1, 0x15c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_13:I

    const/16 v1, 0x15d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_14:I

    const/16 v1, 0x15e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_15:I

    const/16 v1, 0x15f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_16:I

    const/16 v1, 0x160

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_17:I

    const/16 v1, 0x161

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_18:I

    const/16 v1, 0x162

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_19:I

    const/16 v1, 0x163

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_20:I

    const/16 v1, 0x164

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_00:I

    const/16 v1, 0x165

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_01:I

    const/16 v1, 0x166

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_02:I

    const/16 v1, 0x167

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_03:I

    const/16 v1, 0x168

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_04:I

    const/16 v1, 0x169

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_05:I

    const/16 v1, 0x16a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_06:I

    const/16 v1, 0x16b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_07:I

    const/16 v1, 0x16c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_08:I

    const/16 v1, 0x16d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_09:I

    const/16 v1, 0x16e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_10:I

    const/16 v1, 0x16f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_11:I

    const/16 v1, 0x170

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_12:I

    const/16 v1, 0x171

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_13:I

    const/16 v1, 0x172

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_14:I

    const/16 v1, 0x173

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_15:I

    const/16 v1, 0x174

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_16:I

    const/16 v1, 0x175

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_17:I

    const/16 v1, 0x176

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_18:I

    const/16 v1, 0x177

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_19:I

    const/16 v1, 0x178

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_20:I

    const/16 v1, 0x179

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_00:I

    const/16 v1, 0x17a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_01:I

    const/16 v1, 0x17b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_02:I

    const/16 v1, 0x17c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_03:I

    const/16 v1, 0x17d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_04:I

    const/16 v1, 0x17e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_05:I

    const/16 v1, 0x17f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_06:I

    const/16 v1, 0x180

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_07:I

    const/16 v1, 0x181

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_08:I

    const/16 v1, 0x182

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_09:I

    const/16 v1, 0x183

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_10:I

    const/16 v1, 0x184

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_11:I

    const/16 v1, 0x185

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_12:I

    const/16 v1, 0x186

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_13:I

    const/16 v1, 0x187

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_14:I

    const/16 v1, 0x188

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_15:I

    const/16 v1, 0x189

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_16:I

    const/16 v1, 0x18a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_17:I

    const/16 v1, 0x18b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_18:I

    const/16 v1, 0x18c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_19:I

    const/16 v1, 0x18d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_20:I

    const/16 v1, 0x18e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_00:I

    const/16 v1, 0x18f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_01:I

    const/16 v1, 0x190

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_02:I

    const/16 v1, 0x191

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_03:I

    const/16 v1, 0x192

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_04:I

    const/16 v1, 0x193

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_05:I

    const/16 v1, 0x194

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_06:I

    const/16 v1, 0x195

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_07:I

    const/16 v1, 0x196

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_08:I

    const/16 v1, 0x197

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_09:I

    const/16 v1, 0x198

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_10:I

    const/16 v1, 0x199

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_11:I

    const/16 v1, 0x19a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_12:I

    const/16 v1, 0x19b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_13:I

    const/16 v1, 0x19c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_14:I

    const/16 v1, 0x19d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_15:I

    const/16 v1, 0x19e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_16:I

    const/16 v1, 0x19f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_17:I

    const/16 v1, 0x1a0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_18:I

    const/16 v1, 0x1a1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_19:I

    const/16 v1, 0x1a2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_20:I

    const/16 v1, 0x1a3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_00:I

    const/16 v1, 0x1a4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_01:I

    const/16 v1, 0x1a5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_02:I

    const/16 v1, 0x1a6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_03:I

    const/16 v1, 0x1a7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_04:I

    const/16 v1, 0x1a8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_05:I

    const/16 v1, 0x1a9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_06:I

    const/16 v1, 0x1aa

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_07:I

    const/16 v1, 0x1ab

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_08:I

    const/16 v1, 0x1ac

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_09:I

    const/16 v1, 0x1ad

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_10:I

    const/16 v1, 0x1ae

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_11:I

    const/16 v1, 0x1af

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_12:I

    const/16 v1, 0x1b0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_13:I

    const/16 v1, 0x1b1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_14:I

    const/16 v1, 0x1b2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_15:I

    const/16 v1, 0x1b3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_16:I

    const/16 v1, 0x1b4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_17:I

    const/16 v1, 0x1b5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_18:I

    const/16 v1, 0x1b6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_19:I

    const/16 v1, 0x1b7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_20:I

    const/16 v1, 0x1b8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_00:I

    const/16 v1, 0x1b9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_01:I

    const/16 v1, 0x1ba

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_02:I

    const/16 v1, 0x1bb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_03:I

    const/16 v1, 0x1bc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_04:I

    const/16 v1, 0x1bd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_05:I

    const/16 v1, 0x1be

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_06:I

    const/16 v1, 0x1bf

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_07:I

    const/16 v1, 0x1c0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_08:I

    const/16 v1, 0x1c1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_09:I

    const/16 v1, 0x1c2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_10:I

    const/16 v1, 0x1c3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_11:I

    const/16 v1, 0x1c4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_12:I

    const/16 v1, 0x1c5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_13:I

    const/16 v1, 0x1c6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_14:I

    const/16 v1, 0x1c7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_15:I

    const/16 v1, 0x1c8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_16:I

    const/16 v1, 0x1c9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_17:I

    const/16 v1, 0x1ca

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_18:I

    const/16 v1, 0x1cb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_19:I

    const/16 v1, 0x1cc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_20:I

    const/16 v1, 0x1cd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_00:I

    const/16 v1, 0x1ce

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_01:I

    const/16 v1, 0x1cf

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_02:I

    const/16 v1, 0x1d0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_03:I

    const/16 v1, 0x1d1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_04:I

    const/16 v1, 0x1d2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_05:I

    const/16 v1, 0x1d3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_06:I

    const/16 v1, 0x1d4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_07:I

    const/16 v1, 0x1d5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_08:I

    const/16 v1, 0x1d6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_09:I

    const/16 v1, 0x1d7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_10:I

    const/16 v1, 0x1d8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_11:I

    const/16 v1, 0x1d9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_12:I

    const/16 v1, 0x1da

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_13:I

    const/16 v1, 0x1db

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_14:I

    const/16 v1, 0x1dc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_15:I

    const/16 v1, 0x1dd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_16:I

    const/16 v1, 0x1de

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_17:I

    const/16 v1, 0x1df

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_18:I

    const/16 v1, 0x1e0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_19:I

    const/16 v1, 0x1e1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_20:I

    const/16 v1, 0x1e2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_00:I

    const/16 v1, 0x1e3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_01:I

    const/16 v1, 0x1e4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_02:I

    const/16 v1, 0x1e5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_03:I

    const/16 v1, 0x1e6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_04:I

    const/16 v1, 0x1e7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_05:I

    const/16 v1, 0x1e8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_06:I

    const/16 v1, 0x1e9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_07:I

    const/16 v1, 0x1ea

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_08:I

    const/16 v1, 0x1eb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_09:I

    const/16 v1, 0x1ec

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_10:I

    const/16 v1, 0x1ed

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_11:I

    const/16 v1, 0x1ee

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_12:I

    const/16 v1, 0x1ef

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_13:I

    const/16 v1, 0x1f0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_14:I

    const/16 v1, 0x1f1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_15:I

    const/16 v1, 0x1f2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_16:I

    const/16 v1, 0x1f3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_17:I

    const/16 v1, 0x1f4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_18:I

    const/16 v1, 0x1f5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_19:I

    const/16 v1, 0x1f6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_20:I

    const/16 v1, 0x1f7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_00:I

    const/16 v1, 0x1f8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_01:I

    const/16 v1, 0x1f9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_02:I

    const/16 v1, 0x1fa

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_03:I

    const/16 v1, 0x1fb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_04:I

    const/16 v1, 0x1fc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_05:I

    const/16 v1, 0x1fd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_06:I

    const/16 v1, 0x1fe

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_07:I

    const/16 v1, 0x1ff

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_08:I

    const/16 v1, 0x200

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_09:I

    const/16 v1, 0x201

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_10:I

    const/16 v1, 0x202

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_11:I

    const/16 v1, 0x203

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_12:I

    const/16 v1, 0x204

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_13:I

    const/16 v1, 0x205

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_14:I

    const/16 v1, 0x206

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_15:I

    const/16 v1, 0x207

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_16:I

    const/16 v1, 0x208

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_17:I

    const/16 v1, 0x209

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_18:I

    const/16 v1, 0x20a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_19:I

    const/16 v1, 0x20b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_20:I

    const/16 v1, 0x20c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_00:I

    const/16 v1, 0x20d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_01:I

    const/16 v1, 0x20e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_02:I

    const/16 v1, 0x20f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_03:I

    const/16 v1, 0x210

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_04:I

    const/16 v1, 0x211

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_05:I

    const/16 v1, 0x212

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_06:I

    const/16 v1, 0x213

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_07:I

    const/16 v1, 0x214

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_08:I

    const/16 v1, 0x215

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_09:I

    const/16 v1, 0x216

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_10:I

    const/16 v1, 0x217

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_11:I

    const/16 v1, 0x218

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_12:I

    const/16 v1, 0x219

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_13:I

    const/16 v1, 0x21a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_14:I

    const/16 v1, 0x21b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_15:I

    const/16 v1, 0x21c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_16:I

    const/16 v1, 0x21d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_17:I

    const/16 v1, 0x21e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_18:I

    const/16 v1, 0x21f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_19:I

    const/16 v1, 0x220

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_20:I

    const/16 v1, 0x221

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_00:I

    const/16 v1, 0x222

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_01:I

    const/16 v1, 0x223

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_02:I

    const/16 v1, 0x224

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_03:I

    const/16 v1, 0x225

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_04:I

    const/16 v1, 0x226

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_05:I

    const/16 v1, 0x227

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_06:I

    const/16 v1, 0x228

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_07:I

    const/16 v1, 0x229

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_08:I

    const/16 v1, 0x22a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_09:I

    const/16 v1, 0x22b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_10:I

    const/16 v1, 0x22c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_11:I

    const/16 v1, 0x22d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_12:I

    const/16 v1, 0x22e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_13:I

    const/16 v1, 0x22f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_14:I

    const/16 v1, 0x230

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_15:I

    const/16 v1, 0x231

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_16:I

    const/16 v1, 0x232

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_17:I

    const/16 v1, 0x233

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_18:I

    const/16 v1, 0x234

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_19:I

    const/16 v1, 0x235

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_20:I

    const/16 v1, 0x236

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_00:I

    const/16 v1, 0x237

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_01:I

    const/16 v1, 0x238

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_02:I

    const/16 v1, 0x239

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_03:I

    const/16 v1, 0x23a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_04:I

    const/16 v1, 0x23b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_05:I

    const/16 v1, 0x23c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_06:I

    const/16 v1, 0x23d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_07:I

    const/16 v1, 0x23e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_08:I

    const/16 v1, 0x23f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_09:I

    const/16 v1, 0x240

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_10:I

    const/16 v1, 0x241

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_11:I

    const/16 v1, 0x242

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_12:I

    const/16 v1, 0x243

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_13:I

    const/16 v1, 0x244

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_14:I

    const/16 v1, 0x245

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_15:I

    const/16 v1, 0x246

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_16:I

    const/16 v1, 0x247

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_17:I

    const/16 v1, 0x248

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_18:I

    const/16 v1, 0x249

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_19:I

    const/16 v1, 0x24a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_20:I

    const/16 v1, 0x24b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_00:I

    const/16 v1, 0x24c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_01:I

    const/16 v1, 0x24d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_02:I

    const/16 v1, 0x24e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_03:I

    const/16 v1, 0x24f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_04:I

    const/16 v1, 0x250

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_05:I

    const/16 v1, 0x251

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_06:I

    const/16 v1, 0x252

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_07:I

    const/16 v1, 0x253

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_08:I

    const/16 v1, 0x254

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_09:I

    const/16 v1, 0x255

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_10:I

    const/16 v1, 0x256

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_11:I

    const/16 v1, 0x257

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_12:I

    const/16 v1, 0x258

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_13:I

    const/16 v1, 0x259

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_14:I

    const/16 v1, 0x25a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_15:I

    const/16 v1, 0x25b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_16:I

    const/16 v1, 0x25c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_17:I

    const/16 v1, 0x25d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_18:I

    const/16 v1, 0x25e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_19:I

    const/16 v1, 0x25f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_20:I

    const/16 v1, 0x260

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_00:I

    const/16 v1, 0x261

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_01:I

    const/16 v1, 0x262

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_02:I

    const/16 v1, 0x263

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_03:I

    const/16 v1, 0x264

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_04:I

    const/16 v1, 0x265

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_05:I

    const/16 v1, 0x266

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_06:I

    const/16 v1, 0x267

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_07:I

    const/16 v1, 0x268

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_08:I

    const/16 v1, 0x269

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_09:I

    const/16 v1, 0x26a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_10:I

    const/16 v1, 0x26b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_11:I

    const/16 v1, 0x26c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_12:I

    const/16 v1, 0x26d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_13:I

    const/16 v1, 0x26e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_14:I

    const/16 v1, 0x26f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_15:I

    const/16 v1, 0x270

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_16:I

    const/16 v1, 0x271

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_17:I

    const/16 v1, 0x272

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_18:I

    const/16 v1, 0x273

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_19:I

    const/16 v1, 0x274

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_20:I

    const/16 v1, 0x275

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_00:I

    const/16 v1, 0x276

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_01:I

    const/16 v1, 0x277

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_02:I

    const/16 v1, 0x278

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_03:I

    const/16 v1, 0x279

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_04:I

    const/16 v1, 0x27a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_05:I

    const/16 v1, 0x27b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_06:I

    const/16 v1, 0x27c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_07:I

    const/16 v1, 0x27d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_08:I

    const/16 v1, 0x27e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_09:I

    const/16 v1, 0x27f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_10:I

    const/16 v1, 0x280

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_11:I

    const/16 v1, 0x281

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_12:I

    const/16 v1, 0x282

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_13:I

    const/16 v1, 0x283

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_14:I

    const/16 v1, 0x284

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_15:I

    const/16 v1, 0x285

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_16:I

    const/16 v1, 0x286

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_17:I

    const/16 v1, 0x287

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_18:I

    const/16 v1, 0x288

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_19:I

    const/16 v1, 0x289

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_20:I

    const/16 v1, 0x28a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_00:I

    const/16 v1, 0x28b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_01:I

    const/16 v1, 0x28c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_02:I

    const/16 v1, 0x28d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_03:I

    const/16 v1, 0x28e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_04:I

    const/16 v1, 0x28f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_05:I

    const/16 v1, 0x290

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_06:I

    const/16 v1, 0x291

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_07:I

    const/16 v1, 0x292

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_08:I

    const/16 v1, 0x293

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_09:I

    const/16 v1, 0x294

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_10:I

    const/16 v1, 0x295

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_11:I

    const/16 v1, 0x296

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_12:I

    const/16 v1, 0x297

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_13:I

    const/16 v1, 0x298

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_14:I

    const/16 v1, 0x299

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_15:I

    const/16 v1, 0x29a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_16:I

    const/16 v1, 0x29b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_17:I

    const/16 v1, 0x29c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_18:I

    const/16 v1, 0x29d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_19:I

    const/16 v1, 0x29e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_20:I

    const/16 v1, 0x29f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_00:I

    const/16 v1, 0x2a0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_01:I

    const/16 v1, 0x2a1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_02:I

    const/16 v1, 0x2a2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_03:I

    const/16 v1, 0x2a3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_04:I

    const/16 v1, 0x2a4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_05:I

    const/16 v1, 0x2a5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_06:I

    const/16 v1, 0x2a6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_07:I

    const/16 v1, 0x2a7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_08:I

    const/16 v1, 0x2a8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_09:I

    const/16 v1, 0x2a9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_10:I

    const/16 v1, 0x2aa

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_11:I

    const/16 v1, 0x2ab

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_12:I

    const/16 v1, 0x2ac

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_13:I

    const/16 v1, 0x2ad

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_14:I

    const/16 v1, 0x2ae

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_15:I

    const/16 v1, 0x2af

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_16:I

    const/16 v1, 0x2b0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_17:I

    const/16 v1, 0x2b1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_18:I

    const/16 v1, 0x2b2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_19:I

    const/16 v1, 0x2b3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_20:I

    const/16 v1, 0x2b4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_00:I

    const/16 v1, 0x2b5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_01:I

    const/16 v1, 0x2b6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_02:I

    const/16 v1, 0x2b7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_03:I

    const/16 v1, 0x2b8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_04:I

    const/16 v1, 0x2b9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_05:I

    const/16 v1, 0x2ba

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_06:I

    const/16 v1, 0x2bb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_07:I

    const/16 v1, 0x2bc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_08:I

    const/16 v1, 0x2bd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_09:I

    const/16 v1, 0x2be

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_10:I

    const/16 v1, 0x2bf

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_11:I

    const/16 v1, 0x2c0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_12:I

    const/16 v1, 0x2c1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_13:I

    const/16 v1, 0x2c2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_14:I

    const/16 v1, 0x2c3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_15:I

    const/16 v1, 0x2c4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_16:I

    const/16 v1, 0x2c5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_17:I

    const/16 v1, 0x2c6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_18:I

    const/16 v1, 0x2c7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_19:I

    const/16 v1, 0x2c8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_20:I

    const/16 v1, 0x2c9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_00:I

    const/16 v1, 0x2ca

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_01:I

    const/16 v1, 0x2cb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_02:I

    const/16 v1, 0x2cc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_03:I

    const/16 v1, 0x2cd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_04:I

    const/16 v1, 0x2ce

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_05:I

    const/16 v1, 0x2cf

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_06:I

    const/16 v1, 0x2d0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_07:I

    const/16 v1, 0x2d1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_08:I

    const/16 v1, 0x2d2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_09:I

    const/16 v1, 0x2d3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_10:I

    const/16 v1, 0x2d4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_11:I

    const/16 v1, 0x2d5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_12:I

    const/16 v1, 0x2d6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_13:I

    const/16 v1, 0x2d7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_14:I

    const/16 v1, 0x2d8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_15:I

    const/16 v1, 0x2d9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_16:I

    const/16 v1, 0x2da

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_17:I

    const/16 v1, 0x2db

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_18:I

    const/16 v1, 0x2dc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_19:I

    const/16 v1, 0x2dd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_20:I

    const/16 v1, 0x2de

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_00:I

    const/16 v1, 0x2df

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_01:I

    const/16 v1, 0x2e0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_02:I

    const/16 v1, 0x2e1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_03:I

    const/16 v1, 0x2e2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_04:I

    const/16 v1, 0x2e3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_05:I

    const/16 v1, 0x2e4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_06:I

    const/16 v1, 0x2e5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_07:I

    const/16 v1, 0x2e6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_08:I

    const/16 v1, 0x2e7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_09:I

    const/16 v1, 0x2e8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_10:I

    const/16 v1, 0x2e9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_11:I

    const/16 v1, 0x2ea

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_12:I

    const/16 v1, 0x2eb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_13:I

    const/16 v1, 0x2ec

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_14:I

    const/16 v1, 0x2ed

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_15:I

    const/16 v1, 0x2ee

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_16:I

    const/16 v1, 0x2ef

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_17:I

    const/16 v1, 0x2f0

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_18:I

    const/16 v1, 0x2f1

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_19:I

    const/16 v1, 0x2f2

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_20:I

    const/16 v1, 0x2f3

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_00:I

    const/16 v1, 0x2f4

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_01:I

    const/16 v1, 0x2f5

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_02:I

    const/16 v1, 0x2f6

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_03:I

    const/16 v1, 0x2f7

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_04:I

    const/16 v1, 0x2f8

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_05:I

    const/16 v1, 0x2f9

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_06:I

    const/16 v1, 0x2fa

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_07:I

    const/16 v1, 0x2fb

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_08:I

    const/16 v1, 0x2fc

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_09:I

    const/16 v1, 0x2fd

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_10:I

    const/16 v1, 0x2fe

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_11:I

    const/16 v1, 0x2ff

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_12:I

    const/16 v1, 0x300

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_13:I

    const/16 v1, 0x301

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_14:I

    const/16 v1, 0x302

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_15:I

    const/16 v1, 0x303

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_16:I

    const/16 v1, 0x304

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_17:I

    const/16 v1, 0x305

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_18:I

    const/16 v1, 0x306

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_19:I

    const/16 v1, 0x307

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_20:I

    const/16 v1, 0x308

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_00:I

    const/16 v1, 0x309

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_01:I

    const/16 v1, 0x30a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_02:I

    const/16 v1, 0x30b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_03:I

    const/16 v1, 0x30c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_04:I

    const/16 v1, 0x30d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_05:I

    const/16 v1, 0x30e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_06:I

    const/16 v1, 0x30f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_07:I

    const/16 v1, 0x310

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_08:I

    const/16 v1, 0x311

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_09:I

    const/16 v1, 0x312

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_10:I

    const/16 v1, 0x313

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_11:I

    const/16 v1, 0x314

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_12:I

    const/16 v1, 0x315

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_13:I

    const/16 v1, 0x316

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_14:I

    const/16 v1, 0x317

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_15:I

    const/16 v1, 0x318

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_16:I

    const/16 v1, 0x319

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_17:I

    const/16 v1, 0x31a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_18:I

    const/16 v1, 0x31b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_19:I

    const/16 v1, 0x31c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_20:I

    const/16 v1, 0x31d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_00:I

    const/16 v1, 0x31e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_01:I

    const/16 v1, 0x31f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_02:I

    const/16 v1, 0x320

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_03:I

    const/16 v1, 0x321

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_04:I

    const/16 v1, 0x322

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_05:I

    const/16 v1, 0x323

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_06:I

    const/16 v1, 0x324

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_07:I

    const/16 v1, 0x325

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_08:I

    const/16 v1, 0x326

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_09:I

    const/16 v1, 0x327

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_10:I

    const/16 v1, 0x328

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_11:I

    const/16 v1, 0x329

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_12:I

    const/16 v1, 0x32a

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_13:I

    const/16 v1, 0x32b

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_14:I

    const/16 v1, 0x32c

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_15:I

    const/16 v1, 0x32d

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_16:I

    const/16 v1, 0x32e

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_17:I

    const/16 v1, 0x32f

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_18:I

    const/16 v1, 0x330

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_19:I

    const/16 v1, 0x331

    aput p2, v0, v1

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_20:I

    const/16 v1, 0x332

    aput p2, v0, v1

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mFingerprintStepId:[I

    .line 935
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 939
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawFinishMask:Z

    .line 37
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawInvalidProgress:Z

    .line 38
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mShowSecondPhaseImage:Z

    const/16 p3, 0x333

    new-array p3, p3, [I

    .line 43
    sget v0, Lcom/android/settings/R$drawable;->rog_red01_1_00:I

    aput v0, p3, p2

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_01:I

    const/4 v0, 0x1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_02:I

    const/4 v0, 0x2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_03:I

    const/4 v0, 0x3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_04:I

    const/4 v0, 0x4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_05:I

    const/4 v0, 0x5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_06:I

    const/4 v0, 0x6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_07:I

    const/4 v0, 0x7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_08:I

    const/16 v0, 0x8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_09:I

    const/16 v0, 0x9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_10:I

    const/16 v0, 0xa

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_11:I

    const/16 v0, 0xb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_12:I

    const/16 v0, 0xc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_13:I

    const/16 v0, 0xd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_14:I

    const/16 v0, 0xe

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_15:I

    const/16 v0, 0xf

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_16:I

    const/16 v0, 0x10

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_17:I

    const/16 v0, 0x11

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_18:I

    const/16 v0, 0x12

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_19:I

    const/16 v0, 0x13

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_20:I

    const/16 v0, 0x14

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_00:I

    const/16 v0, 0x15

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_01:I

    const/16 v0, 0x16

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_02:I

    const/16 v0, 0x17

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_03:I

    const/16 v0, 0x18

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_04:I

    const/16 v0, 0x19

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_05:I

    const/16 v0, 0x1a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_06:I

    const/16 v0, 0x1b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_07:I

    const/16 v0, 0x1c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_08:I

    const/16 v0, 0x1d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_09:I

    const/16 v0, 0x1e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_10:I

    const/16 v0, 0x1f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_11:I

    const/16 v0, 0x20

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_12:I

    const/16 v0, 0x21

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_13:I

    const/16 v0, 0x22

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_14:I

    const/16 v0, 0x23

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_15:I

    const/16 v0, 0x24

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_16:I

    const/16 v0, 0x25

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_17:I

    const/16 v0, 0x26

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_18:I

    const/16 v0, 0x27

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_19:I

    const/16 v0, 0x28

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_20:I

    const/16 v0, 0x29

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_00:I

    const/16 v0, 0x2a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_01:I

    const/16 v0, 0x2b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_02:I

    const/16 v0, 0x2c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_03:I

    const/16 v0, 0x2d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_04:I

    const/16 v0, 0x2e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_05:I

    const/16 v0, 0x2f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_06:I

    const/16 v0, 0x30

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_07:I

    const/16 v0, 0x31

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_08:I

    const/16 v0, 0x32

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_09:I

    const/16 v0, 0x33

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_10:I

    const/16 v0, 0x34

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_11:I

    const/16 v0, 0x35

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_12:I

    const/16 v0, 0x36

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_13:I

    const/16 v0, 0x37

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_14:I

    const/16 v0, 0x38

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_15:I

    const/16 v0, 0x39

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_16:I

    const/16 v0, 0x3a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_17:I

    const/16 v0, 0x3b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_18:I

    const/16 v0, 0x3c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_19:I

    const/16 v0, 0x3d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_20:I

    const/16 v0, 0x3e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_00:I

    const/16 v0, 0x3f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_01:I

    const/16 v0, 0x40

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_02:I

    const/16 v0, 0x41

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_03:I

    const/16 v0, 0x42

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_04:I

    const/16 v0, 0x43

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_05:I

    const/16 v0, 0x44

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_06:I

    const/16 v0, 0x45

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_07:I

    const/16 v0, 0x46

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_08:I

    const/16 v0, 0x47

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_09:I

    const/16 v0, 0x48

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_10:I

    const/16 v0, 0x49

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_11:I

    const/16 v0, 0x4a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_12:I

    const/16 v0, 0x4b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_13:I

    const/16 v0, 0x4c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_14:I

    const/16 v0, 0x4d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_15:I

    const/16 v0, 0x4e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_16:I

    const/16 v0, 0x4f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_17:I

    const/16 v0, 0x50

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_18:I

    const/16 v0, 0x51

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_19:I

    const/16 v0, 0x52

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_20:I

    const/16 v0, 0x53

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_00:I

    const/16 v0, 0x54

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_01:I

    const/16 v0, 0x55

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_02:I

    const/16 v0, 0x56

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_03:I

    const/16 v0, 0x57

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_04:I

    const/16 v0, 0x58

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_05:I

    const/16 v0, 0x59

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_06:I

    const/16 v0, 0x5a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_07:I

    const/16 v0, 0x5b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_08:I

    const/16 v0, 0x5c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_09:I

    const/16 v0, 0x5d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_10:I

    const/16 v0, 0x5e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_11:I

    const/16 v0, 0x5f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_12:I

    const/16 v0, 0x60

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_13:I

    const/16 v0, 0x61

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_14:I

    const/16 v0, 0x62

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_15:I

    const/16 v0, 0x63

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_16:I

    const/16 v0, 0x64

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_17:I

    const/16 v0, 0x65

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_18:I

    const/16 v0, 0x66

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_19:I

    const/16 v0, 0x67

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_20:I

    const/16 v0, 0x68

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_00:I

    const/16 v0, 0x69

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_01:I

    const/16 v0, 0x6a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_02:I

    const/16 v0, 0x6b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_03:I

    const/16 v0, 0x6c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_04:I

    const/16 v0, 0x6d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_05:I

    const/16 v0, 0x6e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_06:I

    const/16 v0, 0x6f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_07:I

    const/16 v0, 0x70

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_08:I

    const/16 v0, 0x71

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_09:I

    const/16 v0, 0x72

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_10:I

    const/16 v0, 0x73

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_11:I

    const/16 v0, 0x74

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_12:I

    const/16 v0, 0x75

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_13:I

    const/16 v0, 0x76

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_14:I

    const/16 v0, 0x77

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_15:I

    const/16 v0, 0x78

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_16:I

    const/16 v0, 0x79

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_17:I

    const/16 v0, 0x7a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_18:I

    const/16 v0, 0x7b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_19:I

    const/16 v0, 0x7c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_20:I

    const/16 v0, 0x7d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_00:I

    const/16 v0, 0x7e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_01:I

    const/16 v0, 0x7f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_02:I

    const/16 v0, 0x80

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_03:I

    const/16 v0, 0x81

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_04:I

    const/16 v0, 0x82

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_05:I

    const/16 v0, 0x83

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_06:I

    const/16 v0, 0x84

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_07:I

    const/16 v0, 0x85

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_08:I

    const/16 v0, 0x86

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_09:I

    const/16 v0, 0x87

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_10:I

    const/16 v0, 0x88

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_11:I

    const/16 v0, 0x89

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_12:I

    const/16 v0, 0x8a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_13:I

    const/16 v0, 0x8b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_14:I

    const/16 v0, 0x8c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_15:I

    const/16 v0, 0x8d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_16:I

    const/16 v0, 0x8e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_17:I

    const/16 v0, 0x8f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_18:I

    const/16 v0, 0x90

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_19:I

    const/16 v0, 0x91

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_20:I

    const/16 v0, 0x92

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_00:I

    const/16 v0, 0x93

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_01:I

    const/16 v0, 0x94

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_02:I

    const/16 v0, 0x95

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_03:I

    const/16 v0, 0x96

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_04:I

    const/16 v0, 0x97

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_05:I

    const/16 v0, 0x98

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_06:I

    const/16 v0, 0x99

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_07:I

    const/16 v0, 0x9a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_08:I

    const/16 v0, 0x9b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_09:I

    const/16 v0, 0x9c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_10:I

    const/16 v0, 0x9d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_11:I

    const/16 v0, 0x9e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_12:I

    const/16 v0, 0x9f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_13:I

    const/16 v0, 0xa0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_14:I

    const/16 v0, 0xa1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_15:I

    const/16 v0, 0xa2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_16:I

    const/16 v0, 0xa3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_17:I

    const/16 v0, 0xa4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_18:I

    const/16 v0, 0xa5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_19:I

    const/16 v0, 0xa6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_20:I

    const/16 v0, 0xa7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_00:I

    const/16 v0, 0xa8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_01:I

    const/16 v0, 0xa9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_02:I

    const/16 v0, 0xaa

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_03:I

    const/16 v0, 0xab

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_04:I

    const/16 v0, 0xac

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_05:I

    const/16 v0, 0xad

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_06:I

    const/16 v0, 0xae

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_07:I

    const/16 v0, 0xaf

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_08:I

    const/16 v0, 0xb0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_09:I

    const/16 v0, 0xb1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_10:I

    const/16 v0, 0xb2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_11:I

    const/16 v0, 0xb3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_12:I

    const/16 v0, 0xb4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_13:I

    const/16 v0, 0xb5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_14:I

    const/16 v0, 0xb6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_15:I

    const/16 v0, 0xb7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_16:I

    const/16 v0, 0xb8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_17:I

    const/16 v0, 0xb9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_18:I

    const/16 v0, 0xba

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_19:I

    const/16 v0, 0xbb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_20:I

    const/16 v0, 0xbc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_00:I

    const/16 v0, 0xbd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_01:I

    const/16 v0, 0xbe

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_02:I

    const/16 v0, 0xbf

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_03:I

    const/16 v0, 0xc0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_04:I

    const/16 v0, 0xc1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_05:I

    const/16 v0, 0xc2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_06:I

    const/16 v0, 0xc3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_07:I

    const/16 v0, 0xc4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_08:I

    const/16 v0, 0xc5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_09:I

    const/16 v0, 0xc6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_10:I

    const/16 v0, 0xc7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_11:I

    const/16 v0, 0xc8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_12:I

    const/16 v0, 0xc9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_13:I

    const/16 v0, 0xca

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_14:I

    const/16 v0, 0xcb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_15:I

    const/16 v0, 0xcc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_16:I

    const/16 v0, 0xcd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_17:I

    const/16 v0, 0xce

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_18:I

    const/16 v0, 0xcf

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_19:I

    const/16 v0, 0xd0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_20:I

    const/16 v0, 0xd1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_00:I

    const/16 v0, 0xd2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_01:I

    const/16 v0, 0xd3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_02:I

    const/16 v0, 0xd4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_03:I

    const/16 v0, 0xd5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_04:I

    const/16 v0, 0xd6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_05:I

    const/16 v0, 0xd7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_06:I

    const/16 v0, 0xd8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_07:I

    const/16 v0, 0xd9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_08:I

    const/16 v0, 0xda

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_09:I

    const/16 v0, 0xdb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_10:I

    const/16 v0, 0xdc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_11:I

    const/16 v0, 0xdd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_12:I

    const/16 v0, 0xde

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_13:I

    const/16 v0, 0xdf

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_14:I

    const/16 v0, 0xe0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_15:I

    const/16 v0, 0xe1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_16:I

    const/16 v0, 0xe2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_17:I

    const/16 v0, 0xe3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_18:I

    const/16 v0, 0xe4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_19:I

    const/16 v0, 0xe5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_20:I

    const/16 v0, 0xe6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_00:I

    const/16 v0, 0xe7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_01:I

    const/16 v0, 0xe8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_02:I

    const/16 v0, 0xe9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_03:I

    const/16 v0, 0xea

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_04:I

    const/16 v0, 0xeb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_05:I

    const/16 v0, 0xec

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_06:I

    const/16 v0, 0xed

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_07:I

    const/16 v0, 0xee

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_08:I

    const/16 v0, 0xef

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_09:I

    const/16 v0, 0xf0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_10:I

    const/16 v0, 0xf1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_11:I

    const/16 v0, 0xf2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_12:I

    const/16 v0, 0xf3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_13:I

    const/16 v0, 0xf4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_14:I

    const/16 v0, 0xf5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_15:I

    const/16 v0, 0xf6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_16:I

    const/16 v0, 0xf7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_17:I

    const/16 v0, 0xf8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_18:I

    const/16 v0, 0xf9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_19:I

    const/16 v0, 0xfa

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_20:I

    const/16 v0, 0xfb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_00:I

    const/16 v0, 0xfc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_01:I

    const/16 v0, 0xfd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_02:I

    const/16 v0, 0xfe

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_03:I

    const/16 v0, 0xff

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_04:I

    const/16 v0, 0x100

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_05:I

    const/16 v0, 0x101

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_06:I

    const/16 v0, 0x102

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_07:I

    const/16 v0, 0x103

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_08:I

    const/16 v0, 0x104

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_09:I

    const/16 v0, 0x105

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_10:I

    const/16 v0, 0x106

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_11:I

    const/16 v0, 0x107

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_12:I

    const/16 v0, 0x108

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_13:I

    const/16 v0, 0x109

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_14:I

    const/16 v0, 0x10a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_15:I

    const/16 v0, 0x10b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_16:I

    const/16 v0, 0x10c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_17:I

    const/16 v0, 0x10d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_18:I

    const/16 v0, 0x10e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_19:I

    const/16 v0, 0x10f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_20:I

    const/16 v0, 0x110

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_00:I

    const/16 v0, 0x111

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_01:I

    const/16 v0, 0x112

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_02:I

    const/16 v0, 0x113

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_03:I

    const/16 v0, 0x114

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_04:I

    const/16 v0, 0x115

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_05:I

    const/16 v0, 0x116

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_06:I

    const/16 v0, 0x117

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_07:I

    const/16 v0, 0x118

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_08:I

    const/16 v0, 0x119

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_09:I

    const/16 v0, 0x11a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_10:I

    const/16 v0, 0x11b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_11:I

    const/16 v0, 0x11c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_12:I

    const/16 v0, 0x11d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_13:I

    const/16 v0, 0x11e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_14:I

    const/16 v0, 0x11f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_15:I

    const/16 v0, 0x120

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_16:I

    const/16 v0, 0x121

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_17:I

    const/16 v0, 0x122

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_18:I

    const/16 v0, 0x123

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_19:I

    const/16 v0, 0x124

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_20:I

    const/16 v0, 0x125

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_00:I

    const/16 v0, 0x126

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_01:I

    const/16 v0, 0x127

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_02:I

    const/16 v0, 0x128

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_03:I

    const/16 v0, 0x129

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_04:I

    const/16 v0, 0x12a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_05:I

    const/16 v0, 0x12b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_06:I

    const/16 v0, 0x12c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_07:I

    const/16 v0, 0x12d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_08:I

    const/16 v0, 0x12e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_09:I

    const/16 v0, 0x12f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_10:I

    const/16 v0, 0x130

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_11:I

    const/16 v0, 0x131

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_12:I

    const/16 v0, 0x132

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_13:I

    const/16 v0, 0x133

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_14:I

    const/16 v0, 0x134

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_15:I

    const/16 v0, 0x135

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_16:I

    const/16 v0, 0x136

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_17:I

    const/16 v0, 0x137

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_18:I

    const/16 v0, 0x138

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_19:I

    const/16 v0, 0x139

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_20:I

    const/16 v0, 0x13a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_00:I

    const/16 v0, 0x13b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_01:I

    const/16 v0, 0x13c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_02:I

    const/16 v0, 0x13d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_03:I

    const/16 v0, 0x13e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_04:I

    const/16 v0, 0x13f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_05:I

    const/16 v0, 0x140

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_06:I

    const/16 v0, 0x141

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_07:I

    const/16 v0, 0x142

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_08:I

    const/16 v0, 0x143

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_09:I

    const/16 v0, 0x144

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_10:I

    const/16 v0, 0x145

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_11:I

    const/16 v0, 0x146

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_12:I

    const/16 v0, 0x147

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_13:I

    const/16 v0, 0x148

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_14:I

    const/16 v0, 0x149

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_15:I

    const/16 v0, 0x14a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_16:I

    const/16 v0, 0x14b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_17:I

    const/16 v0, 0x14c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_18:I

    const/16 v0, 0x14d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_19:I

    const/16 v0, 0x14e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_20:I

    const/16 v0, 0x14f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_00:I

    const/16 v0, 0x150

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_01:I

    const/16 v0, 0x151

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_02:I

    const/16 v0, 0x152

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_03:I

    const/16 v0, 0x153

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_04:I

    const/16 v0, 0x154

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_05:I

    const/16 v0, 0x155

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_06:I

    const/16 v0, 0x156

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_07:I

    const/16 v0, 0x157

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_08:I

    const/16 v0, 0x158

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_09:I

    const/16 v0, 0x159

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_10:I

    const/16 v0, 0x15a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_11:I

    const/16 v0, 0x15b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_12:I

    const/16 v0, 0x15c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_13:I

    const/16 v0, 0x15d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_14:I

    const/16 v0, 0x15e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_15:I

    const/16 v0, 0x15f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_16:I

    const/16 v0, 0x160

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_17:I

    const/16 v0, 0x161

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_18:I

    const/16 v0, 0x162

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_19:I

    const/16 v0, 0x163

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_20:I

    const/16 v0, 0x164

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_00:I

    const/16 v0, 0x165

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_01:I

    const/16 v0, 0x166

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_02:I

    const/16 v0, 0x167

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_03:I

    const/16 v0, 0x168

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_04:I

    const/16 v0, 0x169

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_05:I

    const/16 v0, 0x16a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_06:I

    const/16 v0, 0x16b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_07:I

    const/16 v0, 0x16c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_08:I

    const/16 v0, 0x16d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_09:I

    const/16 v0, 0x16e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_10:I

    const/16 v0, 0x16f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_11:I

    const/16 v0, 0x170

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_12:I

    const/16 v0, 0x171

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_13:I

    const/16 v0, 0x172

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_14:I

    const/16 v0, 0x173

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_15:I

    const/16 v0, 0x174

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_16:I

    const/16 v0, 0x175

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_17:I

    const/16 v0, 0x176

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_18:I

    const/16 v0, 0x177

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_19:I

    const/16 v0, 0x178

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_20:I

    const/16 v0, 0x179

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_00:I

    const/16 v0, 0x17a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_01:I

    const/16 v0, 0x17b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_02:I

    const/16 v0, 0x17c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_03:I

    const/16 v0, 0x17d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_04:I

    const/16 v0, 0x17e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_05:I

    const/16 v0, 0x17f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_06:I

    const/16 v0, 0x180

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_07:I

    const/16 v0, 0x181

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_08:I

    const/16 v0, 0x182

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_09:I

    const/16 v0, 0x183

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_10:I

    const/16 v0, 0x184

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_11:I

    const/16 v0, 0x185

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_12:I

    const/16 v0, 0x186

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_13:I

    const/16 v0, 0x187

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_14:I

    const/16 v0, 0x188

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_15:I

    const/16 v0, 0x189

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_16:I

    const/16 v0, 0x18a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_17:I

    const/16 v0, 0x18b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_18:I

    const/16 v0, 0x18c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_19:I

    const/16 v0, 0x18d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_20:I

    const/16 v0, 0x18e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_00:I

    const/16 v0, 0x18f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_01:I

    const/16 v0, 0x190

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_02:I

    const/16 v0, 0x191

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_03:I

    const/16 v0, 0x192

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_04:I

    const/16 v0, 0x193

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_05:I

    const/16 v0, 0x194

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_06:I

    const/16 v0, 0x195

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_07:I

    const/16 v0, 0x196

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_08:I

    const/16 v0, 0x197

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_09:I

    const/16 v0, 0x198

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_10:I

    const/16 v0, 0x199

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_11:I

    const/16 v0, 0x19a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_12:I

    const/16 v0, 0x19b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_13:I

    const/16 v0, 0x19c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_14:I

    const/16 v0, 0x19d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_15:I

    const/16 v0, 0x19e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_16:I

    const/16 v0, 0x19f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_17:I

    const/16 v0, 0x1a0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_18:I

    const/16 v0, 0x1a1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_19:I

    const/16 v0, 0x1a2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_20:I

    const/16 v0, 0x1a3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_00:I

    const/16 v0, 0x1a4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_01:I

    const/16 v0, 0x1a5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_02:I

    const/16 v0, 0x1a6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_03:I

    const/16 v0, 0x1a7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_04:I

    const/16 v0, 0x1a8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_05:I

    const/16 v0, 0x1a9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_06:I

    const/16 v0, 0x1aa

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_07:I

    const/16 v0, 0x1ab

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_08:I

    const/16 v0, 0x1ac

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_09:I

    const/16 v0, 0x1ad

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_10:I

    const/16 v0, 0x1ae

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_11:I

    const/16 v0, 0x1af

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_12:I

    const/16 v0, 0x1b0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_13:I

    const/16 v0, 0x1b1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_14:I

    const/16 v0, 0x1b2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_15:I

    const/16 v0, 0x1b3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_16:I

    const/16 v0, 0x1b4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_17:I

    const/16 v0, 0x1b5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_18:I

    const/16 v0, 0x1b6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_19:I

    const/16 v0, 0x1b7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_20:I

    const/16 v0, 0x1b8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_00:I

    const/16 v0, 0x1b9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_01:I

    const/16 v0, 0x1ba

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_02:I

    const/16 v0, 0x1bb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_03:I

    const/16 v0, 0x1bc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_04:I

    const/16 v0, 0x1bd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_05:I

    const/16 v0, 0x1be

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_06:I

    const/16 v0, 0x1bf

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_07:I

    const/16 v0, 0x1c0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_08:I

    const/16 v0, 0x1c1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_09:I

    const/16 v0, 0x1c2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_10:I

    const/16 v0, 0x1c3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_11:I

    const/16 v0, 0x1c4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_12:I

    const/16 v0, 0x1c5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_13:I

    const/16 v0, 0x1c6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_14:I

    const/16 v0, 0x1c7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_15:I

    const/16 v0, 0x1c8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_16:I

    const/16 v0, 0x1c9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_17:I

    const/16 v0, 0x1ca

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_18:I

    const/16 v0, 0x1cb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_19:I

    const/16 v0, 0x1cc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_20:I

    const/16 v0, 0x1cd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_00:I

    const/16 v0, 0x1ce

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_01:I

    const/16 v0, 0x1cf

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_02:I

    const/16 v0, 0x1d0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_03:I

    const/16 v0, 0x1d1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_04:I

    const/16 v0, 0x1d2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_05:I

    const/16 v0, 0x1d3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_06:I

    const/16 v0, 0x1d4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_07:I

    const/16 v0, 0x1d5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_08:I

    const/16 v0, 0x1d6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_09:I

    const/16 v0, 0x1d7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_10:I

    const/16 v0, 0x1d8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_11:I

    const/16 v0, 0x1d9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_12:I

    const/16 v0, 0x1da

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_13:I

    const/16 v0, 0x1db

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_14:I

    const/16 v0, 0x1dc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_15:I

    const/16 v0, 0x1dd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_16:I

    const/16 v0, 0x1de

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_17:I

    const/16 v0, 0x1df

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_18:I

    const/16 v0, 0x1e0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_19:I

    const/16 v0, 0x1e1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_20:I

    const/16 v0, 0x1e2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_00:I

    const/16 v0, 0x1e3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_01:I

    const/16 v0, 0x1e4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_02:I

    const/16 v0, 0x1e5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_03:I

    const/16 v0, 0x1e6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_04:I

    const/16 v0, 0x1e7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_05:I

    const/16 v0, 0x1e8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_06:I

    const/16 v0, 0x1e9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_07:I

    const/16 v0, 0x1ea

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_08:I

    const/16 v0, 0x1eb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_09:I

    const/16 v0, 0x1ec

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_10:I

    const/16 v0, 0x1ed

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_11:I

    const/16 v0, 0x1ee

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_12:I

    const/16 v0, 0x1ef

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_13:I

    const/16 v0, 0x1f0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_14:I

    const/16 v0, 0x1f1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_15:I

    const/16 v0, 0x1f2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_16:I

    const/16 v0, 0x1f3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_17:I

    const/16 v0, 0x1f4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_18:I

    const/16 v0, 0x1f5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_19:I

    const/16 v0, 0x1f6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_20:I

    const/16 v0, 0x1f7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_00:I

    const/16 v0, 0x1f8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_01:I

    const/16 v0, 0x1f9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_02:I

    const/16 v0, 0x1fa

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_03:I

    const/16 v0, 0x1fb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_04:I

    const/16 v0, 0x1fc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_05:I

    const/16 v0, 0x1fd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_06:I

    const/16 v0, 0x1fe

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_07:I

    const/16 v0, 0x1ff

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_08:I

    const/16 v0, 0x200

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_09:I

    const/16 v0, 0x201

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_10:I

    const/16 v0, 0x202

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_11:I

    const/16 v0, 0x203

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_12:I

    const/16 v0, 0x204

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_13:I

    const/16 v0, 0x205

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_14:I

    const/16 v0, 0x206

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_15:I

    const/16 v0, 0x207

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_16:I

    const/16 v0, 0x208

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_17:I

    const/16 v0, 0x209

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_18:I

    const/16 v0, 0x20a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_19:I

    const/16 v0, 0x20b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_20:I

    const/16 v0, 0x20c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_00:I

    const/16 v0, 0x20d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_01:I

    const/16 v0, 0x20e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_02:I

    const/16 v0, 0x20f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_03:I

    const/16 v0, 0x210

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_04:I

    const/16 v0, 0x211

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_05:I

    const/16 v0, 0x212

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_06:I

    const/16 v0, 0x213

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_07:I

    const/16 v0, 0x214

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_08:I

    const/16 v0, 0x215

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_09:I

    const/16 v0, 0x216

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_10:I

    const/16 v0, 0x217

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_11:I

    const/16 v0, 0x218

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_12:I

    const/16 v0, 0x219

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_13:I

    const/16 v0, 0x21a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_14:I

    const/16 v0, 0x21b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_15:I

    const/16 v0, 0x21c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_16:I

    const/16 v0, 0x21d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_17:I

    const/16 v0, 0x21e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_18:I

    const/16 v0, 0x21f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_19:I

    const/16 v0, 0x220

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_20:I

    const/16 v0, 0x221

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_00:I

    const/16 v0, 0x222

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_01:I

    const/16 v0, 0x223

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_02:I

    const/16 v0, 0x224

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_03:I

    const/16 v0, 0x225

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_04:I

    const/16 v0, 0x226

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_05:I

    const/16 v0, 0x227

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_06:I

    const/16 v0, 0x228

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_07:I

    const/16 v0, 0x229

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_08:I

    const/16 v0, 0x22a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_09:I

    const/16 v0, 0x22b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_10:I

    const/16 v0, 0x22c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_11:I

    const/16 v0, 0x22d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_12:I

    const/16 v0, 0x22e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_13:I

    const/16 v0, 0x22f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_14:I

    const/16 v0, 0x230

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_15:I

    const/16 v0, 0x231

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_16:I

    const/16 v0, 0x232

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_17:I

    const/16 v0, 0x233

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_18:I

    const/16 v0, 0x234

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_19:I

    const/16 v0, 0x235

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_20:I

    const/16 v0, 0x236

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_00:I

    const/16 v0, 0x237

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_01:I

    const/16 v0, 0x238

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_02:I

    const/16 v0, 0x239

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_03:I

    const/16 v0, 0x23a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_04:I

    const/16 v0, 0x23b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_05:I

    const/16 v0, 0x23c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_06:I

    const/16 v0, 0x23d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_07:I

    const/16 v0, 0x23e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_08:I

    const/16 v0, 0x23f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_09:I

    const/16 v0, 0x240

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_10:I

    const/16 v0, 0x241

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_11:I

    const/16 v0, 0x242

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_12:I

    const/16 v0, 0x243

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_13:I

    const/16 v0, 0x244

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_14:I

    const/16 v0, 0x245

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_15:I

    const/16 v0, 0x246

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_16:I

    const/16 v0, 0x247

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_17:I

    const/16 v0, 0x248

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_18:I

    const/16 v0, 0x249

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_19:I

    const/16 v0, 0x24a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_20:I

    const/16 v0, 0x24b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_00:I

    const/16 v0, 0x24c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_01:I

    const/16 v0, 0x24d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_02:I

    const/16 v0, 0x24e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_03:I

    const/16 v0, 0x24f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_04:I

    const/16 v0, 0x250

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_05:I

    const/16 v0, 0x251

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_06:I

    const/16 v0, 0x252

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_07:I

    const/16 v0, 0x253

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_08:I

    const/16 v0, 0x254

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_09:I

    const/16 v0, 0x255

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_10:I

    const/16 v0, 0x256

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_11:I

    const/16 v0, 0x257

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_12:I

    const/16 v0, 0x258

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_13:I

    const/16 v0, 0x259

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_14:I

    const/16 v0, 0x25a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_15:I

    const/16 v0, 0x25b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_16:I

    const/16 v0, 0x25c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_17:I

    const/16 v0, 0x25d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_18:I

    const/16 v0, 0x25e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_19:I

    const/16 v0, 0x25f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_20:I

    const/16 v0, 0x260

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_00:I

    const/16 v0, 0x261

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_01:I

    const/16 v0, 0x262

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_02:I

    const/16 v0, 0x263

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_03:I

    const/16 v0, 0x264

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_04:I

    const/16 v0, 0x265

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_05:I

    const/16 v0, 0x266

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_06:I

    const/16 v0, 0x267

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_07:I

    const/16 v0, 0x268

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_08:I

    const/16 v0, 0x269

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_09:I

    const/16 v0, 0x26a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_10:I

    const/16 v0, 0x26b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_11:I

    const/16 v0, 0x26c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_12:I

    const/16 v0, 0x26d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_13:I

    const/16 v0, 0x26e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_14:I

    const/16 v0, 0x26f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_15:I

    const/16 v0, 0x270

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_16:I

    const/16 v0, 0x271

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_17:I

    const/16 v0, 0x272

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_18:I

    const/16 v0, 0x273

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_19:I

    const/16 v0, 0x274

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_20:I

    const/16 v0, 0x275

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_00:I

    const/16 v0, 0x276

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_01:I

    const/16 v0, 0x277

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_02:I

    const/16 v0, 0x278

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_03:I

    const/16 v0, 0x279

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_04:I

    const/16 v0, 0x27a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_05:I

    const/16 v0, 0x27b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_06:I

    const/16 v0, 0x27c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_07:I

    const/16 v0, 0x27d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_08:I

    const/16 v0, 0x27e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_09:I

    const/16 v0, 0x27f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_10:I

    const/16 v0, 0x280

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_11:I

    const/16 v0, 0x281

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_12:I

    const/16 v0, 0x282

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_13:I

    const/16 v0, 0x283

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_14:I

    const/16 v0, 0x284

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_15:I

    const/16 v0, 0x285

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_16:I

    const/16 v0, 0x286

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_17:I

    const/16 v0, 0x287

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_18:I

    const/16 v0, 0x288

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_19:I

    const/16 v0, 0x289

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_20:I

    const/16 v0, 0x28a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_00:I

    const/16 v0, 0x28b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_01:I

    const/16 v0, 0x28c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_02:I

    const/16 v0, 0x28d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_03:I

    const/16 v0, 0x28e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_04:I

    const/16 v0, 0x28f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_05:I

    const/16 v0, 0x290

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_06:I

    const/16 v0, 0x291

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_07:I

    const/16 v0, 0x292

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_08:I

    const/16 v0, 0x293

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_09:I

    const/16 v0, 0x294

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_10:I

    const/16 v0, 0x295

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_11:I

    const/16 v0, 0x296

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_12:I

    const/16 v0, 0x297

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_13:I

    const/16 v0, 0x298

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_14:I

    const/16 v0, 0x299

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_15:I

    const/16 v0, 0x29a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_16:I

    const/16 v0, 0x29b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_17:I

    const/16 v0, 0x29c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_18:I

    const/16 v0, 0x29d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_19:I

    const/16 v0, 0x29e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_20:I

    const/16 v0, 0x29f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_00:I

    const/16 v0, 0x2a0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_01:I

    const/16 v0, 0x2a1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_02:I

    const/16 v0, 0x2a2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_03:I

    const/16 v0, 0x2a3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_04:I

    const/16 v0, 0x2a4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_05:I

    const/16 v0, 0x2a5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_06:I

    const/16 v0, 0x2a6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_07:I

    const/16 v0, 0x2a7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_08:I

    const/16 v0, 0x2a8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_09:I

    const/16 v0, 0x2a9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_10:I

    const/16 v0, 0x2aa

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_11:I

    const/16 v0, 0x2ab

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_12:I

    const/16 v0, 0x2ac

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_13:I

    const/16 v0, 0x2ad

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_14:I

    const/16 v0, 0x2ae

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_15:I

    const/16 v0, 0x2af

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_16:I

    const/16 v0, 0x2b0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_17:I

    const/16 v0, 0x2b1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_18:I

    const/16 v0, 0x2b2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_19:I

    const/16 v0, 0x2b3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_20:I

    const/16 v0, 0x2b4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_00:I

    const/16 v0, 0x2b5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_01:I

    const/16 v0, 0x2b6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_02:I

    const/16 v0, 0x2b7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_03:I

    const/16 v0, 0x2b8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_04:I

    const/16 v0, 0x2b9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_05:I

    const/16 v0, 0x2ba

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_06:I

    const/16 v0, 0x2bb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_07:I

    const/16 v0, 0x2bc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_08:I

    const/16 v0, 0x2bd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_09:I

    const/16 v0, 0x2be

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_10:I

    const/16 v0, 0x2bf

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_11:I

    const/16 v0, 0x2c0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_12:I

    const/16 v0, 0x2c1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_13:I

    const/16 v0, 0x2c2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_14:I

    const/16 v0, 0x2c3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_15:I

    const/16 v0, 0x2c4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_16:I

    const/16 v0, 0x2c5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_17:I

    const/16 v0, 0x2c6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_18:I

    const/16 v0, 0x2c7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_19:I

    const/16 v0, 0x2c8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_20:I

    const/16 v0, 0x2c9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_00:I

    const/16 v0, 0x2ca

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_01:I

    const/16 v0, 0x2cb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_02:I

    const/16 v0, 0x2cc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_03:I

    const/16 v0, 0x2cd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_04:I

    const/16 v0, 0x2ce

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_05:I

    const/16 v0, 0x2cf

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_06:I

    const/16 v0, 0x2d0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_07:I

    const/16 v0, 0x2d1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_08:I

    const/16 v0, 0x2d2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_09:I

    const/16 v0, 0x2d3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_10:I

    const/16 v0, 0x2d4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_11:I

    const/16 v0, 0x2d5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_12:I

    const/16 v0, 0x2d6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_13:I

    const/16 v0, 0x2d7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_14:I

    const/16 v0, 0x2d8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_15:I

    const/16 v0, 0x2d9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_16:I

    const/16 v0, 0x2da

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_17:I

    const/16 v0, 0x2db

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_18:I

    const/16 v0, 0x2dc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_19:I

    const/16 v0, 0x2dd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_20:I

    const/16 v0, 0x2de

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_00:I

    const/16 v0, 0x2df

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_01:I

    const/16 v0, 0x2e0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_02:I

    const/16 v0, 0x2e1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_03:I

    const/16 v0, 0x2e2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_04:I

    const/16 v0, 0x2e3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_05:I

    const/16 v0, 0x2e4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_06:I

    const/16 v0, 0x2e5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_07:I

    const/16 v0, 0x2e6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_08:I

    const/16 v0, 0x2e7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_09:I

    const/16 v0, 0x2e8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_10:I

    const/16 v0, 0x2e9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_11:I

    const/16 v0, 0x2ea

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_12:I

    const/16 v0, 0x2eb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_13:I

    const/16 v0, 0x2ec

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_14:I

    const/16 v0, 0x2ed

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_15:I

    const/16 v0, 0x2ee

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_16:I

    const/16 v0, 0x2ef

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_17:I

    const/16 v0, 0x2f0

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_18:I

    const/16 v0, 0x2f1

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_19:I

    const/16 v0, 0x2f2

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_20:I

    const/16 v0, 0x2f3

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_00:I

    const/16 v0, 0x2f4

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_01:I

    const/16 v0, 0x2f5

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_02:I

    const/16 v0, 0x2f6

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_03:I

    const/16 v0, 0x2f7

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_04:I

    const/16 v0, 0x2f8

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_05:I

    const/16 v0, 0x2f9

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_06:I

    const/16 v0, 0x2fa

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_07:I

    const/16 v0, 0x2fb

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_08:I

    const/16 v0, 0x2fc

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_09:I

    const/16 v0, 0x2fd

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_10:I

    const/16 v0, 0x2fe

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_11:I

    const/16 v0, 0x2ff

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_12:I

    const/16 v0, 0x300

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_13:I

    const/16 v0, 0x301

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_14:I

    const/16 v0, 0x302

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_15:I

    const/16 v0, 0x303

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_16:I

    const/16 v0, 0x304

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_17:I

    const/16 v0, 0x305

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_18:I

    const/16 v0, 0x306

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_19:I

    const/16 v0, 0x307

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_20:I

    const/16 v0, 0x308

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_00:I

    const/16 v0, 0x309

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_01:I

    const/16 v0, 0x30a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_02:I

    const/16 v0, 0x30b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_03:I

    const/16 v0, 0x30c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_04:I

    const/16 v0, 0x30d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_05:I

    const/16 v0, 0x30e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_06:I

    const/16 v0, 0x30f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_07:I

    const/16 v0, 0x310

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_08:I

    const/16 v0, 0x311

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_09:I

    const/16 v0, 0x312

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_10:I

    const/16 v0, 0x313

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_11:I

    const/16 v0, 0x314

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_12:I

    const/16 v0, 0x315

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_13:I

    const/16 v0, 0x316

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_14:I

    const/16 v0, 0x317

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_15:I

    const/16 v0, 0x318

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_16:I

    const/16 v0, 0x319

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_17:I

    const/16 v0, 0x31a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_18:I

    const/16 v0, 0x31b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_19:I

    const/16 v0, 0x31c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_20:I

    const/16 v0, 0x31d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_00:I

    const/16 v0, 0x31e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_01:I

    const/16 v0, 0x31f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_02:I

    const/16 v0, 0x320

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_03:I

    const/16 v0, 0x321

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_04:I

    const/16 v0, 0x322

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_05:I

    const/16 v0, 0x323

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_06:I

    const/16 v0, 0x324

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_07:I

    const/16 v0, 0x325

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_08:I

    const/16 v0, 0x326

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_09:I

    const/16 v0, 0x327

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_10:I

    const/16 v0, 0x328

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_11:I

    const/16 v0, 0x329

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_12:I

    const/16 v0, 0x32a

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_13:I

    const/16 v0, 0x32b

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_14:I

    const/16 v0, 0x32c

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_15:I

    const/16 v0, 0x32d

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_16:I

    const/16 v0, 0x32e

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_17:I

    const/16 v0, 0x32f

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_18:I

    const/16 v0, 0x330

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_19:I

    const/16 v0, 0x331

    aput p2, p3, v0

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_20:I

    const/16 v0, 0x332

    aput p2, p3, v0

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mFingerprintStepId:[I

    .line 940
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 944
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawFinishMask:Z

    .line 37
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawInvalidProgress:Z

    .line 38
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mShowSecondPhaseImage:Z

    const/16 p3, 0x333

    new-array p3, p3, [I

    .line 43
    sget p4, Lcom/android/settings/R$drawable;->rog_red01_1_00:I

    aput p4, p3, p2

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_01:I

    const/4 p4, 0x1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_02:I

    const/4 p4, 0x2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_03:I

    const/4 p4, 0x3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_04:I

    const/4 p4, 0x4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_05:I

    const/4 p4, 0x5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_06:I

    const/4 p4, 0x6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_07:I

    const/4 p4, 0x7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_08:I

    const/16 p4, 0x8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_09:I

    const/16 p4, 0x9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_10:I

    const/16 p4, 0xa

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_11:I

    const/16 p4, 0xb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_12:I

    const/16 p4, 0xc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_13:I

    const/16 p4, 0xd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_14:I

    const/16 p4, 0xe

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_15:I

    const/16 p4, 0xf

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_16:I

    const/16 p4, 0x10

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_17:I

    const/16 p4, 0x11

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_18:I

    const/16 p4, 0x12

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_19:I

    const/16 p4, 0x13

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_1_20:I

    const/16 p4, 0x14

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_00:I

    const/16 p4, 0x15

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_01:I

    const/16 p4, 0x16

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_02:I

    const/16 p4, 0x17

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_03:I

    const/16 p4, 0x18

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_04:I

    const/16 p4, 0x19

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_05:I

    const/16 p4, 0x1a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_06:I

    const/16 p4, 0x1b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_07:I

    const/16 p4, 0x1c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_08:I

    const/16 p4, 0x1d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_09:I

    const/16 p4, 0x1e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_10:I

    const/16 p4, 0x1f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_11:I

    const/16 p4, 0x20

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_12:I

    const/16 p4, 0x21

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_13:I

    const/16 p4, 0x22

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_14:I

    const/16 p4, 0x23

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_15:I

    const/16 p4, 0x24

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_16:I

    const/16 p4, 0x25

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_17:I

    const/16 p4, 0x26

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_18:I

    const/16 p4, 0x27

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_19:I

    const/16 p4, 0x28

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red01_2_20:I

    const/16 p4, 0x29

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_00:I

    const/16 p4, 0x2a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_01:I

    const/16 p4, 0x2b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_02:I

    const/16 p4, 0x2c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_03:I

    const/16 p4, 0x2d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_04:I

    const/16 p4, 0x2e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_05:I

    const/16 p4, 0x2f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_06:I

    const/16 p4, 0x30

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_07:I

    const/16 p4, 0x31

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_08:I

    const/16 p4, 0x32

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_09:I

    const/16 p4, 0x33

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_10:I

    const/16 p4, 0x34

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_11:I

    const/16 p4, 0x35

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_12:I

    const/16 p4, 0x36

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_13:I

    const/16 p4, 0x37

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_14:I

    const/16 p4, 0x38

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_15:I

    const/16 p4, 0x39

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_16:I

    const/16 p4, 0x3a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_17:I

    const/16 p4, 0x3b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_18:I

    const/16 p4, 0x3c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_19:I

    const/16 p4, 0x3d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_1_20:I

    const/16 p4, 0x3e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_00:I

    const/16 p4, 0x3f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_01:I

    const/16 p4, 0x40

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_02:I

    const/16 p4, 0x41

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_03:I

    const/16 p4, 0x42

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_04:I

    const/16 p4, 0x43

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_05:I

    const/16 p4, 0x44

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_06:I

    const/16 p4, 0x45

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_07:I

    const/16 p4, 0x46

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_08:I

    const/16 p4, 0x47

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_09:I

    const/16 p4, 0x48

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_10:I

    const/16 p4, 0x49

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_11:I

    const/16 p4, 0x4a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_12:I

    const/16 p4, 0x4b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_13:I

    const/16 p4, 0x4c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_14:I

    const/16 p4, 0x4d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_15:I

    const/16 p4, 0x4e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_16:I

    const/16 p4, 0x4f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_17:I

    const/16 p4, 0x50

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_18:I

    const/16 p4, 0x51

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_19:I

    const/16 p4, 0x52

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red02_2_20:I

    const/16 p4, 0x53

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_00:I

    const/16 p4, 0x54

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_01:I

    const/16 p4, 0x55

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_02:I

    const/16 p4, 0x56

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_03:I

    const/16 p4, 0x57

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_04:I

    const/16 p4, 0x58

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_05:I

    const/16 p4, 0x59

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_06:I

    const/16 p4, 0x5a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_07:I

    const/16 p4, 0x5b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_08:I

    const/16 p4, 0x5c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_09:I

    const/16 p4, 0x5d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_10:I

    const/16 p4, 0x5e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_11:I

    const/16 p4, 0x5f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_12:I

    const/16 p4, 0x60

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_13:I

    const/16 p4, 0x61

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_14:I

    const/16 p4, 0x62

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_15:I

    const/16 p4, 0x63

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_16:I

    const/16 p4, 0x64

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_17:I

    const/16 p4, 0x65

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_18:I

    const/16 p4, 0x66

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_19:I

    const/16 p4, 0x67

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_1_20:I

    const/16 p4, 0x68

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_00:I

    const/16 p4, 0x69

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_01:I

    const/16 p4, 0x6a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_02:I

    const/16 p4, 0x6b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_03:I

    const/16 p4, 0x6c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_04:I

    const/16 p4, 0x6d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_05:I

    const/16 p4, 0x6e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_06:I

    const/16 p4, 0x6f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_07:I

    const/16 p4, 0x70

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_08:I

    const/16 p4, 0x71

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_09:I

    const/16 p4, 0x72

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_10:I

    const/16 p4, 0x73

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_11:I

    const/16 p4, 0x74

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_12:I

    const/16 p4, 0x75

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_13:I

    const/16 p4, 0x76

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_14:I

    const/16 p4, 0x77

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_15:I

    const/16 p4, 0x78

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_16:I

    const/16 p4, 0x79

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_17:I

    const/16 p4, 0x7a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_18:I

    const/16 p4, 0x7b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_19:I

    const/16 p4, 0x7c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red03_2_20:I

    const/16 p4, 0x7d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_00:I

    const/16 p4, 0x7e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_01:I

    const/16 p4, 0x7f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_02:I

    const/16 p4, 0x80

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_03:I

    const/16 p4, 0x81

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_04:I

    const/16 p4, 0x82

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_05:I

    const/16 p4, 0x83

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_06:I

    const/16 p4, 0x84

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_07:I

    const/16 p4, 0x85

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_08:I

    const/16 p4, 0x86

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_09:I

    const/16 p4, 0x87

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_10:I

    const/16 p4, 0x88

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_11:I

    const/16 p4, 0x89

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_12:I

    const/16 p4, 0x8a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_13:I

    const/16 p4, 0x8b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_14:I

    const/16 p4, 0x8c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_15:I

    const/16 p4, 0x8d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_16:I

    const/16 p4, 0x8e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_17:I

    const/16 p4, 0x8f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_18:I

    const/16 p4, 0x90

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_19:I

    const/16 p4, 0x91

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_1_20:I

    const/16 p4, 0x92

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_00:I

    const/16 p4, 0x93

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_01:I

    const/16 p4, 0x94

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_02:I

    const/16 p4, 0x95

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_03:I

    const/16 p4, 0x96

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_04:I

    const/16 p4, 0x97

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_05:I

    const/16 p4, 0x98

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_06:I

    const/16 p4, 0x99

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_07:I

    const/16 p4, 0x9a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_08:I

    const/16 p4, 0x9b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_09:I

    const/16 p4, 0x9c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_10:I

    const/16 p4, 0x9d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_11:I

    const/16 p4, 0x9e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_12:I

    const/16 p4, 0x9f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_13:I

    const/16 p4, 0xa0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_14:I

    const/16 p4, 0xa1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_15:I

    const/16 p4, 0xa2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_16:I

    const/16 p4, 0xa3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_17:I

    const/16 p4, 0xa4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_18:I

    const/16 p4, 0xa5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_19:I

    const/16 p4, 0xa6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red04_2_20:I

    const/16 p4, 0xa7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_00:I

    const/16 p4, 0xa8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_01:I

    const/16 p4, 0xa9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_02:I

    const/16 p4, 0xaa

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_03:I

    const/16 p4, 0xab

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_04:I

    const/16 p4, 0xac

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_05:I

    const/16 p4, 0xad

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_06:I

    const/16 p4, 0xae

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_07:I

    const/16 p4, 0xaf

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_08:I

    const/16 p4, 0xb0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_09:I

    const/16 p4, 0xb1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_10:I

    const/16 p4, 0xb2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_11:I

    const/16 p4, 0xb3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_12:I

    const/16 p4, 0xb4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_13:I

    const/16 p4, 0xb5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_14:I

    const/16 p4, 0xb6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_15:I

    const/16 p4, 0xb7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_16:I

    const/16 p4, 0xb8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_17:I

    const/16 p4, 0xb9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_18:I

    const/16 p4, 0xba

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_19:I

    const/16 p4, 0xbb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_1_20:I

    const/16 p4, 0xbc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_00:I

    const/16 p4, 0xbd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_01:I

    const/16 p4, 0xbe

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_02:I

    const/16 p4, 0xbf

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_03:I

    const/16 p4, 0xc0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_04:I

    const/16 p4, 0xc1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_05:I

    const/16 p4, 0xc2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_06:I

    const/16 p4, 0xc3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_07:I

    const/16 p4, 0xc4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_08:I

    const/16 p4, 0xc5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_09:I

    const/16 p4, 0xc6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_10:I

    const/16 p4, 0xc7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_11:I

    const/16 p4, 0xc8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_12:I

    const/16 p4, 0xc9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_13:I

    const/16 p4, 0xca

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_14:I

    const/16 p4, 0xcb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_15:I

    const/16 p4, 0xcc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_16:I

    const/16 p4, 0xcd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_17:I

    const/16 p4, 0xce

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_18:I

    const/16 p4, 0xcf

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_19:I

    const/16 p4, 0xd0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red05_2_20:I

    const/16 p4, 0xd1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_00:I

    const/16 p4, 0xd2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_01:I

    const/16 p4, 0xd3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_02:I

    const/16 p4, 0xd4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_03:I

    const/16 p4, 0xd5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_04:I

    const/16 p4, 0xd6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_05:I

    const/16 p4, 0xd7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_06:I

    const/16 p4, 0xd8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_07:I

    const/16 p4, 0xd9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_08:I

    const/16 p4, 0xda

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_09:I

    const/16 p4, 0xdb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_10:I

    const/16 p4, 0xdc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_11:I

    const/16 p4, 0xdd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_12:I

    const/16 p4, 0xde

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_13:I

    const/16 p4, 0xdf

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_14:I

    const/16 p4, 0xe0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_15:I

    const/16 p4, 0xe1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_16:I

    const/16 p4, 0xe2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_17:I

    const/16 p4, 0xe3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_18:I

    const/16 p4, 0xe4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_19:I

    const/16 p4, 0xe5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_1_20:I

    const/16 p4, 0xe6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_00:I

    const/16 p4, 0xe7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_01:I

    const/16 p4, 0xe8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_02:I

    const/16 p4, 0xe9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_03:I

    const/16 p4, 0xea

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_04:I

    const/16 p4, 0xeb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_05:I

    const/16 p4, 0xec

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_06:I

    const/16 p4, 0xed

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_07:I

    const/16 p4, 0xee

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_08:I

    const/16 p4, 0xef

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_09:I

    const/16 p4, 0xf0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_10:I

    const/16 p4, 0xf1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_11:I

    const/16 p4, 0xf2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_12:I

    const/16 p4, 0xf3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_13:I

    const/16 p4, 0xf4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_14:I

    const/16 p4, 0xf5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_15:I

    const/16 p4, 0xf6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_16:I

    const/16 p4, 0xf7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_17:I

    const/16 p4, 0xf8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_18:I

    const/16 p4, 0xf9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_19:I

    const/16 p4, 0xfa

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red06_2_20:I

    const/16 p4, 0xfb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_00:I

    const/16 p4, 0xfc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_01:I

    const/16 p4, 0xfd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_02:I

    const/16 p4, 0xfe

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_03:I

    const/16 p4, 0xff

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_04:I

    const/16 p4, 0x100

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_05:I

    const/16 p4, 0x101

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_06:I

    const/16 p4, 0x102

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_07:I

    const/16 p4, 0x103

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_08:I

    const/16 p4, 0x104

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_09:I

    const/16 p4, 0x105

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_10:I

    const/16 p4, 0x106

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_11:I

    const/16 p4, 0x107

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_12:I

    const/16 p4, 0x108

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_13:I

    const/16 p4, 0x109

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_14:I

    const/16 p4, 0x10a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_15:I

    const/16 p4, 0x10b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_16:I

    const/16 p4, 0x10c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_17:I

    const/16 p4, 0x10d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_18:I

    const/16 p4, 0x10e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_19:I

    const/16 p4, 0x10f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_1_20:I

    const/16 p4, 0x110

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_00:I

    const/16 p4, 0x111

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_01:I

    const/16 p4, 0x112

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_02:I

    const/16 p4, 0x113

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_03:I

    const/16 p4, 0x114

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_04:I

    const/16 p4, 0x115

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_05:I

    const/16 p4, 0x116

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_06:I

    const/16 p4, 0x117

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_07:I

    const/16 p4, 0x118

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_08:I

    const/16 p4, 0x119

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_09:I

    const/16 p4, 0x11a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_10:I

    const/16 p4, 0x11b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_11:I

    const/16 p4, 0x11c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_12:I

    const/16 p4, 0x11d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_13:I

    const/16 p4, 0x11e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_14:I

    const/16 p4, 0x11f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_15:I

    const/16 p4, 0x120

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_16:I

    const/16 p4, 0x121

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_17:I

    const/16 p4, 0x122

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_18:I

    const/16 p4, 0x123

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_19:I

    const/16 p4, 0x124

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red07_2_20:I

    const/16 p4, 0x125

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_00:I

    const/16 p4, 0x126

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_01:I

    const/16 p4, 0x127

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_02:I

    const/16 p4, 0x128

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_03:I

    const/16 p4, 0x129

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_04:I

    const/16 p4, 0x12a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_05:I

    const/16 p4, 0x12b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_06:I

    const/16 p4, 0x12c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_07:I

    const/16 p4, 0x12d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_08:I

    const/16 p4, 0x12e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_09:I

    const/16 p4, 0x12f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_10:I

    const/16 p4, 0x130

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_11:I

    const/16 p4, 0x131

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_12:I

    const/16 p4, 0x132

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_13:I

    const/16 p4, 0x133

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_14:I

    const/16 p4, 0x134

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_15:I

    const/16 p4, 0x135

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_16:I

    const/16 p4, 0x136

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_17:I

    const/16 p4, 0x137

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_18:I

    const/16 p4, 0x138

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_19:I

    const/16 p4, 0x139

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_1_20:I

    const/16 p4, 0x13a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_00:I

    const/16 p4, 0x13b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_01:I

    const/16 p4, 0x13c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_02:I

    const/16 p4, 0x13d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_03:I

    const/16 p4, 0x13e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_04:I

    const/16 p4, 0x13f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_05:I

    const/16 p4, 0x140

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_06:I

    const/16 p4, 0x141

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_07:I

    const/16 p4, 0x142

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_08:I

    const/16 p4, 0x143

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_09:I

    const/16 p4, 0x144

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_10:I

    const/16 p4, 0x145

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_11:I

    const/16 p4, 0x146

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_12:I

    const/16 p4, 0x147

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_13:I

    const/16 p4, 0x148

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_14:I

    const/16 p4, 0x149

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_15:I

    const/16 p4, 0x14a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_16:I

    const/16 p4, 0x14b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_17:I

    const/16 p4, 0x14c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_18:I

    const/16 p4, 0x14d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_19:I

    const/16 p4, 0x14e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red08_2_20:I

    const/16 p4, 0x14f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_00:I

    const/16 p4, 0x150

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_01:I

    const/16 p4, 0x151

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_02:I

    const/16 p4, 0x152

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_03:I

    const/16 p4, 0x153

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_04:I

    const/16 p4, 0x154

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_05:I

    const/16 p4, 0x155

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_06:I

    const/16 p4, 0x156

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_07:I

    const/16 p4, 0x157

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_08:I

    const/16 p4, 0x158

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_09:I

    const/16 p4, 0x159

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_10:I

    const/16 p4, 0x15a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_11:I

    const/16 p4, 0x15b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_12:I

    const/16 p4, 0x15c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_13:I

    const/16 p4, 0x15d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_14:I

    const/16 p4, 0x15e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_15:I

    const/16 p4, 0x15f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_16:I

    const/16 p4, 0x160

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_17:I

    const/16 p4, 0x161

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_18:I

    const/16 p4, 0x162

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_19:I

    const/16 p4, 0x163

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_1_20:I

    const/16 p4, 0x164

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_00:I

    const/16 p4, 0x165

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_01:I

    const/16 p4, 0x166

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_02:I

    const/16 p4, 0x167

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_03:I

    const/16 p4, 0x168

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_04:I

    const/16 p4, 0x169

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_05:I

    const/16 p4, 0x16a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_06:I

    const/16 p4, 0x16b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_07:I

    const/16 p4, 0x16c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_08:I

    const/16 p4, 0x16d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_09:I

    const/16 p4, 0x16e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_10:I

    const/16 p4, 0x16f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_11:I

    const/16 p4, 0x170

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_12:I

    const/16 p4, 0x171

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_13:I

    const/16 p4, 0x172

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_14:I

    const/16 p4, 0x173

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_15:I

    const/16 p4, 0x174

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_16:I

    const/16 p4, 0x175

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_17:I

    const/16 p4, 0x176

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_18:I

    const/16 p4, 0x177

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_19:I

    const/16 p4, 0x178

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red09_2_20:I

    const/16 p4, 0x179

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_00:I

    const/16 p4, 0x17a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_01:I

    const/16 p4, 0x17b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_02:I

    const/16 p4, 0x17c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_03:I

    const/16 p4, 0x17d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_04:I

    const/16 p4, 0x17e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_05:I

    const/16 p4, 0x17f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_06:I

    const/16 p4, 0x180

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_07:I

    const/16 p4, 0x181

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_08:I

    const/16 p4, 0x182

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_09:I

    const/16 p4, 0x183

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_10:I

    const/16 p4, 0x184

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_11:I

    const/16 p4, 0x185

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_12:I

    const/16 p4, 0x186

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_13:I

    const/16 p4, 0x187

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_14:I

    const/16 p4, 0x188

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_15:I

    const/16 p4, 0x189

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_16:I

    const/16 p4, 0x18a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_17:I

    const/16 p4, 0x18b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_18:I

    const/16 p4, 0x18c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_19:I

    const/16 p4, 0x18d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_1_20:I

    const/16 p4, 0x18e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_00:I

    const/16 p4, 0x18f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_01:I

    const/16 p4, 0x190

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_02:I

    const/16 p4, 0x191

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_03:I

    const/16 p4, 0x192

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_04:I

    const/16 p4, 0x193

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_05:I

    const/16 p4, 0x194

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_06:I

    const/16 p4, 0x195

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_07:I

    const/16 p4, 0x196

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_08:I

    const/16 p4, 0x197

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_09:I

    const/16 p4, 0x198

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_10:I

    const/16 p4, 0x199

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_11:I

    const/16 p4, 0x19a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_12:I

    const/16 p4, 0x19b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_13:I

    const/16 p4, 0x19c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_14:I

    const/16 p4, 0x19d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_15:I

    const/16 p4, 0x19e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_16:I

    const/16 p4, 0x19f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_17:I

    const/16 p4, 0x1a0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_18:I

    const/16 p4, 0x1a1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_19:I

    const/16 p4, 0x1a2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red10_2_20:I

    const/16 p4, 0x1a3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_00:I

    const/16 p4, 0x1a4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_01:I

    const/16 p4, 0x1a5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_02:I

    const/16 p4, 0x1a6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_03:I

    const/16 p4, 0x1a7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_04:I

    const/16 p4, 0x1a8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_05:I

    const/16 p4, 0x1a9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_06:I

    const/16 p4, 0x1aa

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_07:I

    const/16 p4, 0x1ab

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_08:I

    const/16 p4, 0x1ac

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_09:I

    const/16 p4, 0x1ad

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_10:I

    const/16 p4, 0x1ae

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_11:I

    const/16 p4, 0x1af

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_12:I

    const/16 p4, 0x1b0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_13:I

    const/16 p4, 0x1b1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_14:I

    const/16 p4, 0x1b2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_15:I

    const/16 p4, 0x1b3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_16:I

    const/16 p4, 0x1b4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_17:I

    const/16 p4, 0x1b5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_18:I

    const/16 p4, 0x1b6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_19:I

    const/16 p4, 0x1b7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_1_20:I

    const/16 p4, 0x1b8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_00:I

    const/16 p4, 0x1b9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_01:I

    const/16 p4, 0x1ba

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_02:I

    const/16 p4, 0x1bb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_03:I

    const/16 p4, 0x1bc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_04:I

    const/16 p4, 0x1bd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_05:I

    const/16 p4, 0x1be

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_06:I

    const/16 p4, 0x1bf

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_07:I

    const/16 p4, 0x1c0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_08:I

    const/16 p4, 0x1c1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_09:I

    const/16 p4, 0x1c2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_10:I

    const/16 p4, 0x1c3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_11:I

    const/16 p4, 0x1c4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_12:I

    const/16 p4, 0x1c5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_13:I

    const/16 p4, 0x1c6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_14:I

    const/16 p4, 0x1c7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_15:I

    const/16 p4, 0x1c8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_16:I

    const/16 p4, 0x1c9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_17:I

    const/16 p4, 0x1ca

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_18:I

    const/16 p4, 0x1cb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_19:I

    const/16 p4, 0x1cc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red11_2_20:I

    const/16 p4, 0x1cd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_00:I

    const/16 p4, 0x1ce

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_01:I

    const/16 p4, 0x1cf

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_02:I

    const/16 p4, 0x1d0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_03:I

    const/16 p4, 0x1d1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_04:I

    const/16 p4, 0x1d2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_05:I

    const/16 p4, 0x1d3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_06:I

    const/16 p4, 0x1d4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_07:I

    const/16 p4, 0x1d5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_08:I

    const/16 p4, 0x1d6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_09:I

    const/16 p4, 0x1d7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_10:I

    const/16 p4, 0x1d8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_11:I

    const/16 p4, 0x1d9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_12:I

    const/16 p4, 0x1da

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_13:I

    const/16 p4, 0x1db

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_14:I

    const/16 p4, 0x1dc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_15:I

    const/16 p4, 0x1dd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_16:I

    const/16 p4, 0x1de

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_17:I

    const/16 p4, 0x1df

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_18:I

    const/16 p4, 0x1e0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_19:I

    const/16 p4, 0x1e1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_1_20:I

    const/16 p4, 0x1e2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_00:I

    const/16 p4, 0x1e3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_01:I

    const/16 p4, 0x1e4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_02:I

    const/16 p4, 0x1e5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_03:I

    const/16 p4, 0x1e6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_04:I

    const/16 p4, 0x1e7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_05:I

    const/16 p4, 0x1e8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_06:I

    const/16 p4, 0x1e9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_07:I

    const/16 p4, 0x1ea

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_08:I

    const/16 p4, 0x1eb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_09:I

    const/16 p4, 0x1ec

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_10:I

    const/16 p4, 0x1ed

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_11:I

    const/16 p4, 0x1ee

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_12:I

    const/16 p4, 0x1ef

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_13:I

    const/16 p4, 0x1f0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_14:I

    const/16 p4, 0x1f1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_15:I

    const/16 p4, 0x1f2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_16:I

    const/16 p4, 0x1f3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_17:I

    const/16 p4, 0x1f4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_18:I

    const/16 p4, 0x1f5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_19:I

    const/16 p4, 0x1f6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red12_2_20:I

    const/16 p4, 0x1f7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_00:I

    const/16 p4, 0x1f8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_01:I

    const/16 p4, 0x1f9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_02:I

    const/16 p4, 0x1fa

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_03:I

    const/16 p4, 0x1fb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_04:I

    const/16 p4, 0x1fc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_05:I

    const/16 p4, 0x1fd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_06:I

    const/16 p4, 0x1fe

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_07:I

    const/16 p4, 0x1ff

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_08:I

    const/16 p4, 0x200

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_09:I

    const/16 p4, 0x201

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_10:I

    const/16 p4, 0x202

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_11:I

    const/16 p4, 0x203

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_12:I

    const/16 p4, 0x204

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_13:I

    const/16 p4, 0x205

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_14:I

    const/16 p4, 0x206

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_15:I

    const/16 p4, 0x207

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_16:I

    const/16 p4, 0x208

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_17:I

    const/16 p4, 0x209

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_18:I

    const/16 p4, 0x20a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_19:I

    const/16 p4, 0x20b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_1_20:I

    const/16 p4, 0x20c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_00:I

    const/16 p4, 0x20d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_01:I

    const/16 p4, 0x20e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_02:I

    const/16 p4, 0x20f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_03:I

    const/16 p4, 0x210

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_04:I

    const/16 p4, 0x211

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_05:I

    const/16 p4, 0x212

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_06:I

    const/16 p4, 0x213

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_07:I

    const/16 p4, 0x214

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_08:I

    const/16 p4, 0x215

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_09:I

    const/16 p4, 0x216

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_10:I

    const/16 p4, 0x217

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_11:I

    const/16 p4, 0x218

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_12:I

    const/16 p4, 0x219

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_13:I

    const/16 p4, 0x21a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_14:I

    const/16 p4, 0x21b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_15:I

    const/16 p4, 0x21c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_16:I

    const/16 p4, 0x21d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_17:I

    const/16 p4, 0x21e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_18:I

    const/16 p4, 0x21f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_19:I

    const/16 p4, 0x220

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red13_2_20:I

    const/16 p4, 0x221

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_00:I

    const/16 p4, 0x222

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_01:I

    const/16 p4, 0x223

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_02:I

    const/16 p4, 0x224

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_03:I

    const/16 p4, 0x225

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_04:I

    const/16 p4, 0x226

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_05:I

    const/16 p4, 0x227

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_06:I

    const/16 p4, 0x228

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_07:I

    const/16 p4, 0x229

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_08:I

    const/16 p4, 0x22a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_09:I

    const/16 p4, 0x22b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_10:I

    const/16 p4, 0x22c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_11:I

    const/16 p4, 0x22d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_12:I

    const/16 p4, 0x22e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_13:I

    const/16 p4, 0x22f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_14:I

    const/16 p4, 0x230

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_15:I

    const/16 p4, 0x231

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_16:I

    const/16 p4, 0x232

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_17:I

    const/16 p4, 0x233

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_18:I

    const/16 p4, 0x234

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_19:I

    const/16 p4, 0x235

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_1_20:I

    const/16 p4, 0x236

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_00:I

    const/16 p4, 0x237

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_01:I

    const/16 p4, 0x238

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_02:I

    const/16 p4, 0x239

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_03:I

    const/16 p4, 0x23a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_04:I

    const/16 p4, 0x23b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_05:I

    const/16 p4, 0x23c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_06:I

    const/16 p4, 0x23d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_07:I

    const/16 p4, 0x23e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_08:I

    const/16 p4, 0x23f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_09:I

    const/16 p4, 0x240

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_10:I

    const/16 p4, 0x241

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_11:I

    const/16 p4, 0x242

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_12:I

    const/16 p4, 0x243

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_13:I

    const/16 p4, 0x244

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_14:I

    const/16 p4, 0x245

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_15:I

    const/16 p4, 0x246

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_16:I

    const/16 p4, 0x247

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_17:I

    const/16 p4, 0x248

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_18:I

    const/16 p4, 0x249

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_19:I

    const/16 p4, 0x24a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red14_2_20:I

    const/16 p4, 0x24b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_00:I

    const/16 p4, 0x24c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_01:I

    const/16 p4, 0x24d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_02:I

    const/16 p4, 0x24e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_03:I

    const/16 p4, 0x24f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_04:I

    const/16 p4, 0x250

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_05:I

    const/16 p4, 0x251

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_06:I

    const/16 p4, 0x252

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_07:I

    const/16 p4, 0x253

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_08:I

    const/16 p4, 0x254

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_09:I

    const/16 p4, 0x255

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_10:I

    const/16 p4, 0x256

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_11:I

    const/16 p4, 0x257

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_12:I

    const/16 p4, 0x258

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_13:I

    const/16 p4, 0x259

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_14:I

    const/16 p4, 0x25a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_15:I

    const/16 p4, 0x25b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_16:I

    const/16 p4, 0x25c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_17:I

    const/16 p4, 0x25d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_18:I

    const/16 p4, 0x25e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_19:I

    const/16 p4, 0x25f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_1_20:I

    const/16 p4, 0x260

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_00:I

    const/16 p4, 0x261

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_01:I

    const/16 p4, 0x262

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_02:I

    const/16 p4, 0x263

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_03:I

    const/16 p4, 0x264

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_04:I

    const/16 p4, 0x265

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_05:I

    const/16 p4, 0x266

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_06:I

    const/16 p4, 0x267

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_07:I

    const/16 p4, 0x268

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_08:I

    const/16 p4, 0x269

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_09:I

    const/16 p4, 0x26a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_10:I

    const/16 p4, 0x26b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_11:I

    const/16 p4, 0x26c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_12:I

    const/16 p4, 0x26d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_13:I

    const/16 p4, 0x26e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_14:I

    const/16 p4, 0x26f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_15:I

    const/16 p4, 0x270

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_16:I

    const/16 p4, 0x271

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_17:I

    const/16 p4, 0x272

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_18:I

    const/16 p4, 0x273

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_19:I

    const/16 p4, 0x274

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red15_2_20:I

    const/16 p4, 0x275

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_00:I

    const/16 p4, 0x276

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_01:I

    const/16 p4, 0x277

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_02:I

    const/16 p4, 0x278

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_03:I

    const/16 p4, 0x279

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_04:I

    const/16 p4, 0x27a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_05:I

    const/16 p4, 0x27b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_06:I

    const/16 p4, 0x27c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_07:I

    const/16 p4, 0x27d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_08:I

    const/16 p4, 0x27e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_09:I

    const/16 p4, 0x27f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_10:I

    const/16 p4, 0x280

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_11:I

    const/16 p4, 0x281

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_12:I

    const/16 p4, 0x282

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_13:I

    const/16 p4, 0x283

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_14:I

    const/16 p4, 0x284

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_15:I

    const/16 p4, 0x285

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_16:I

    const/16 p4, 0x286

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_17:I

    const/16 p4, 0x287

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_18:I

    const/16 p4, 0x288

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_19:I

    const/16 p4, 0x289

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_1_20:I

    const/16 p4, 0x28a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_00:I

    const/16 p4, 0x28b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_01:I

    const/16 p4, 0x28c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_02:I

    const/16 p4, 0x28d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_03:I

    const/16 p4, 0x28e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_04:I

    const/16 p4, 0x28f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_05:I

    const/16 p4, 0x290

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_06:I

    const/16 p4, 0x291

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_07:I

    const/16 p4, 0x292

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_08:I

    const/16 p4, 0x293

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_09:I

    const/16 p4, 0x294

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_10:I

    const/16 p4, 0x295

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_11:I

    const/16 p4, 0x296

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_12:I

    const/16 p4, 0x297

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_13:I

    const/16 p4, 0x298

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_14:I

    const/16 p4, 0x299

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_15:I

    const/16 p4, 0x29a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_16:I

    const/16 p4, 0x29b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_17:I

    const/16 p4, 0x29c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_18:I

    const/16 p4, 0x29d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_19:I

    const/16 p4, 0x29e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red16_2_20:I

    const/16 p4, 0x29f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_00:I

    const/16 p4, 0x2a0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_01:I

    const/16 p4, 0x2a1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_02:I

    const/16 p4, 0x2a2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_03:I

    const/16 p4, 0x2a3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_04:I

    const/16 p4, 0x2a4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_05:I

    const/16 p4, 0x2a5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_06:I

    const/16 p4, 0x2a6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_07:I

    const/16 p4, 0x2a7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_08:I

    const/16 p4, 0x2a8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_09:I

    const/16 p4, 0x2a9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_10:I

    const/16 p4, 0x2aa

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_11:I

    const/16 p4, 0x2ab

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_12:I

    const/16 p4, 0x2ac

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_13:I

    const/16 p4, 0x2ad

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_14:I

    const/16 p4, 0x2ae

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_15:I

    const/16 p4, 0x2af

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_16:I

    const/16 p4, 0x2b0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_17:I

    const/16 p4, 0x2b1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_18:I

    const/16 p4, 0x2b2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_19:I

    const/16 p4, 0x2b3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_1_20:I

    const/16 p4, 0x2b4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_00:I

    const/16 p4, 0x2b5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_01:I

    const/16 p4, 0x2b6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_02:I

    const/16 p4, 0x2b7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_03:I

    const/16 p4, 0x2b8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_04:I

    const/16 p4, 0x2b9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_05:I

    const/16 p4, 0x2ba

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_06:I

    const/16 p4, 0x2bb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_07:I

    const/16 p4, 0x2bc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_08:I

    const/16 p4, 0x2bd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_09:I

    const/16 p4, 0x2be

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_10:I

    const/16 p4, 0x2bf

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_11:I

    const/16 p4, 0x2c0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_12:I

    const/16 p4, 0x2c1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_13:I

    const/16 p4, 0x2c2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_14:I

    const/16 p4, 0x2c3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_15:I

    const/16 p4, 0x2c4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_16:I

    const/16 p4, 0x2c5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_17:I

    const/16 p4, 0x2c6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_18:I

    const/16 p4, 0x2c7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_19:I

    const/16 p4, 0x2c8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red17_2_20:I

    const/16 p4, 0x2c9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_00:I

    const/16 p4, 0x2ca

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_01:I

    const/16 p4, 0x2cb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_02:I

    const/16 p4, 0x2cc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_03:I

    const/16 p4, 0x2cd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_04:I

    const/16 p4, 0x2ce

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_05:I

    const/16 p4, 0x2cf

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_06:I

    const/16 p4, 0x2d0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_07:I

    const/16 p4, 0x2d1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_08:I

    const/16 p4, 0x2d2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_09:I

    const/16 p4, 0x2d3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_10:I

    const/16 p4, 0x2d4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_11:I

    const/16 p4, 0x2d5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_12:I

    const/16 p4, 0x2d6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_13:I

    const/16 p4, 0x2d7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_14:I

    const/16 p4, 0x2d8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_15:I

    const/16 p4, 0x2d9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_16:I

    const/16 p4, 0x2da

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_17:I

    const/16 p4, 0x2db

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_18:I

    const/16 p4, 0x2dc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_19:I

    const/16 p4, 0x2dd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_1_20:I

    const/16 p4, 0x2de

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_00:I

    const/16 p4, 0x2df

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_01:I

    const/16 p4, 0x2e0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_02:I

    const/16 p4, 0x2e1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_03:I

    const/16 p4, 0x2e2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_04:I

    const/16 p4, 0x2e3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_05:I

    const/16 p4, 0x2e4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_06:I

    const/16 p4, 0x2e5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_07:I

    const/16 p4, 0x2e6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_08:I

    const/16 p4, 0x2e7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_09:I

    const/16 p4, 0x2e8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_10:I

    const/16 p4, 0x2e9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_11:I

    const/16 p4, 0x2ea

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_12:I

    const/16 p4, 0x2eb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_13:I

    const/16 p4, 0x2ec

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_14:I

    const/16 p4, 0x2ed

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_15:I

    const/16 p4, 0x2ee

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_16:I

    const/16 p4, 0x2ef

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_17:I

    const/16 p4, 0x2f0

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_18:I

    const/16 p4, 0x2f1

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_19:I

    const/16 p4, 0x2f2

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red18_2_20:I

    const/16 p4, 0x2f3

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_00:I

    const/16 p4, 0x2f4

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_01:I

    const/16 p4, 0x2f5

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_02:I

    const/16 p4, 0x2f6

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_03:I

    const/16 p4, 0x2f7

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_04:I

    const/16 p4, 0x2f8

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_05:I

    const/16 p4, 0x2f9

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_06:I

    const/16 p4, 0x2fa

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_07:I

    const/16 p4, 0x2fb

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_08:I

    const/16 p4, 0x2fc

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_09:I

    const/16 p4, 0x2fd

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_10:I

    const/16 p4, 0x2fe

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_11:I

    const/16 p4, 0x2ff

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_12:I

    const/16 p4, 0x300

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_13:I

    const/16 p4, 0x301

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_14:I

    const/16 p4, 0x302

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_15:I

    const/16 p4, 0x303

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_16:I

    const/16 p4, 0x304

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_17:I

    const/16 p4, 0x305

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_18:I

    const/16 p4, 0x306

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_19:I

    const/16 p4, 0x307

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_1_20:I

    const/16 p4, 0x308

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_00:I

    const/16 p4, 0x309

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_01:I

    const/16 p4, 0x30a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_02:I

    const/16 p4, 0x30b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_03:I

    const/16 p4, 0x30c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_04:I

    const/16 p4, 0x30d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_05:I

    const/16 p4, 0x30e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_06:I

    const/16 p4, 0x30f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_07:I

    const/16 p4, 0x310

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_08:I

    const/16 p4, 0x311

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_09:I

    const/16 p4, 0x312

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_10:I

    const/16 p4, 0x313

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_11:I

    const/16 p4, 0x314

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_12:I

    const/16 p4, 0x315

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_13:I

    const/16 p4, 0x316

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_14:I

    const/16 p4, 0x317

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_15:I

    const/16 p4, 0x318

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_16:I

    const/16 p4, 0x319

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_17:I

    const/16 p4, 0x31a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_18:I

    const/16 p4, 0x31b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_19:I

    const/16 p4, 0x31c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red19_2_20:I

    const/16 p4, 0x31d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_00:I

    const/16 p4, 0x31e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_01:I

    const/16 p4, 0x31f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_02:I

    const/16 p4, 0x320

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_03:I

    const/16 p4, 0x321

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_04:I

    const/16 p4, 0x322

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_05:I

    const/16 p4, 0x323

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_06:I

    const/16 p4, 0x324

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_07:I

    const/16 p4, 0x325

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_08:I

    const/16 p4, 0x326

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_09:I

    const/16 p4, 0x327

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_10:I

    const/16 p4, 0x328

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_11:I

    const/16 p4, 0x329

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_12:I

    const/16 p4, 0x32a

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_13:I

    const/16 p4, 0x32b

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_14:I

    const/16 p4, 0x32c

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_15:I

    const/16 p4, 0x32d

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_16:I

    const/16 p4, 0x32e

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_17:I

    const/16 p4, 0x32f

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_18:I

    const/16 p4, 0x330

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_19:I

    const/16 p4, 0x331

    aput p2, p3, p4

    sget p2, Lcom/android/settings/R$drawable;->rog_red20_1_20:I

    const/16 p4, 0x332

    aput p2, p3, p4

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mFingerprintStepId:[I

    .line 945
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->init(Landroid/content/Context;)V

    return-void
.end method

.method private createProgressBitmap(II)V
    .locals 4

    .line 1048
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mRatio:I

    .line 1049
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mFingerprintStepId:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1050
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1052
    :goto_0
    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mLastRatio:I

    if-eq v0, v3, :cond_2

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContext:Landroid/content/Context;

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mBitmap:Landroid/graphics/Bitmap;

    .line 1058
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mRatio:I

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mLastRatio:I

    :cond_2
    return-void
.end method

.method private drawFingerprintProgress(IIILandroid/graphics/Canvas;)V
    .locals 7

    .line 1064
    invoke-direct {p0, p2, p3}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->createProgressBitmap(II)V

    int-to-float v3, p2

    int-to-float v4, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p4

    .line 1065
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 1066
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x1

    .line 1067
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1068
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1069
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    invoke-virtual {p4, p0, p1, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1070
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1074
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1075
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 1076
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1077
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 949
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContext:Landroid/content/Context;

    .line 950
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mFinishMask:I

    .line 952
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_image_w:I

    .line 953
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mImageW:I

    .line 954
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_image_h:I

    .line 955
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mImageH:I

    .line 957
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_content_w:I

    .line 958
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContentW:I

    .line 959
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_content_h:I

    .line 960
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContentH:I

    return-void
.end method


# virtual methods
.method protected measureDimension(II)I
    .locals 1

    .line 1003
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 1004
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 1010
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1021
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 1022
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v9, v0

    int-to-float v10, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object v2, p1

    move v5, v9

    move v6, v10

    .line 1023
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v8

    const/16 v2, 0xff

    .line 1026
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->drawFingerprintProgress(IIILandroid/graphics/Canvas;)V

    .line 1029
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawFinishMask:Z

    if-eqz v0, :cond_0

    .line 1030
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1031
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->asus_fingerprint_progress_finish:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xc8

    .line 1032
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1033
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    .line 1034
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mFinishMask:I

    int-to-float v4, p0

    move-object v2, p1

    move v5, v9

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1036
    :cond_0
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 965
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 967
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 968
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 970
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContentW:I

    if-lt v0, v2, :cond_0

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContentH:I

    if-lt v1, v3, :cond_0

    .line 971
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->measureDimension(II)I

    move-result p1

    .line 972
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContentH:I

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->measureDimension(II)I

    move-result p2

    .line 973
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v1, v1

    .line 985
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContentH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 986
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 988
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContentW:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 989
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContentH:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 992
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->measureDimension(II)I

    move-result p1

    .line 993
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->measureDimension(II)I

    move-result p2

    .line 995
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    .line 979
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mContentH:I

    invoke-virtual {p0, v2, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setFinishProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1089
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mDrawFinishMask:Z

    .line 1090
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mFinishMask:I

    .line 1091
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1082
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mRatio:I

    if-eq v0, p1, :cond_0

    .line 1083
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->mRatio:I

    .line 1084
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method
