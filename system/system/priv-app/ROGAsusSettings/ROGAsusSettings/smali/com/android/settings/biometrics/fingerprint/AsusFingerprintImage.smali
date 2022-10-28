.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;
.super Landroid/widget/ImageView;
.source "AsusFingerprintImage.java"


# static fields
.field public static final INTERRUPT_LENGTH:I

.field public static final INTERRUPT_STEP:I

.field private static final TOTAL_FRAME:F

.field private static mFingerprintStepIdArrayFirstPhase:[I

.field private static mFingerprintStepIdArraySecondPhase:[I

.field private static mFingerprintTransitionsArray:[I


# instance fields
.field private animationHandler:Landroid/os/Handler;

.field private currentAniStep:I

.field private fps_normal:I

.field private fps_transition:I

.field public isAnimationFinished:Z

.field public isAnimationRunning:Z

.field private isSecondPhaseNow:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentH:I

.field private mContentW:I

.field private mContext:Landroid/content/Context;

.field private mDrawFinishMask:Z

.field private mDrawInvalidProgress:Z

.field private mFingerprintStepId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintTransitionsQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishMask:I

.field private mImageH:I

.field private mImageW:I

.field private mLastRatio:I

.field private mNextRatio:I

.field private mRatio:I

.field private mShowSecondPhaseImage:Z

.field mTransitionRunnable:Ljava/lang/Runnable;

.field private nextStep:I


# direct methods
.method public static synthetic $r8$lambda$NN2Ut01rQ48GdtGv71rnAQn5LQo(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->lambda$init$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$flxjzL-ex6i7nojkNIru9SMwiBw(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->lambda$init$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$quYJBsEt474qvc2HYEZYubNQUB0(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->lambda$init$1(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 26

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 62
    sget v2, Lcom/android/settings/R$drawable;->rog_fp11_2_05:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settings/R$drawable;->rog_fp11_2_06:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$drawable;->rog_fp11_2_07:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/settings/R$drawable;->rog_fp11_2_08:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/settings/R$drawable;->rog_fp11_2_09:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lcom/android/settings/R$drawable;->rog_fp11_2_10:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Lcom/android/settings/R$drawable;->rog_fp11_2_11:I

    const/4 v9, 0x6

    aput v2, v1, v9

    sget v2, Lcom/android/settings/R$drawable;->rog_fp11_2_12:I

    const/4 v10, 0x7

    aput v2, v1, v10

    sget v2, Lcom/android/settings/R$drawable;->rog_fp11_2_13:I

    const/16 v11, 0x8

    aput v2, v1, v11

    sput-object v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsArray:[I

    const/16 v2, 0x6e

    new-array v2, v2, [I

    .line 74
    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_1_00:I

    aput v12, v2, v3

    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_1_01:I

    aput v12, v2, v4

    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_1_02:I

    aput v12, v2, v5

    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_1_03:I

    aput v12, v2, v6

    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_1_04:I

    aput v12, v2, v7

    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_2_00:I

    aput v12, v2, v8

    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_2_01:I

    aput v12, v2, v9

    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_2_02:I

    aput v12, v2, v10

    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_2_03:I

    aput v12, v2, v11

    sget v12, Lcom/android/settings/R$drawable;->rog_fp01_2_04:I

    aput v12, v2, v0

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_1_00:I

    const/16 v13, 0xa

    aput v12, v2, v13

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_1_01:I

    const/16 v14, 0xb

    aput v12, v2, v14

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_1_02:I

    const/16 v15, 0xc

    aput v12, v2, v15

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_1_03:I

    const/16 v16, 0xd

    aput v12, v2, v16

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_1_04:I

    const/16 v17, 0xe

    aput v12, v2, v17

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_2_00:I

    const/16 v18, 0xf

    aput v12, v2, v18

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_2_01:I

    const/16 v19, 0x10

    aput v12, v2, v19

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_2_02:I

    const/16 v20, 0x11

    aput v12, v2, v20

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_2_03:I

    const/16 v21, 0x12

    aput v12, v2, v21

    sget v12, Lcom/android/settings/R$drawable;->rog_fp02_2_04:I

    const/16 v22, 0x13

    aput v12, v2, v22

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_1_00:I

    const/16 v23, 0x14

    aput v12, v2, v23

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_1_01:I

    const/16 v24, 0x15

    aput v12, v2, v24

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_1_02:I

    const/16 v25, 0x16

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_1_03:I

    const/16 v25, 0x17

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_1_04:I

    const/16 v25, 0x18

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_2_00:I

    const/16 v25, 0x19

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_2_01:I

    const/16 v25, 0x1a

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_2_02:I

    const/16 v25, 0x1b

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_2_03:I

    const/16 v25, 0x1c

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp03_2_04:I

    const/16 v25, 0x1d

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_1_00:I

    const/16 v25, 0x1e

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_1_01:I

    const/16 v25, 0x1f

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_1_02:I

    const/16 v25, 0x20

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_1_03:I

    const/16 v25, 0x21

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_1_04:I

    const/16 v25, 0x22

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_2_00:I

    const/16 v25, 0x23

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_2_01:I

    const/16 v25, 0x24

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_2_02:I

    const/16 v25, 0x25

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_2_03:I

    const/16 v25, 0x26

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp04_2_04:I

    const/16 v25, 0x27

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_1_00:I

    const/16 v25, 0x28

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_1_01:I

    const/16 v25, 0x29

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_1_02:I

    const/16 v25, 0x2a

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_1_03:I

    const/16 v25, 0x2b

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_1_04:I

    const/16 v25, 0x2c

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_2_00:I

    const/16 v25, 0x2d

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_2_01:I

    const/16 v25, 0x2e

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_2_02:I

    const/16 v25, 0x2f

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_2_03:I

    const/16 v25, 0x30

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp05_2_04:I

    const/16 v25, 0x31

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_1_00:I

    const/16 v25, 0x32

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_1_01:I

    const/16 v25, 0x33

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_1_02:I

    const/16 v25, 0x34

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_1_03:I

    const/16 v25, 0x35

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_1_04:I

    const/16 v25, 0x36

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_2_00:I

    const/16 v25, 0x37

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_2_01:I

    const/16 v25, 0x38

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_2_02:I

    const/16 v25, 0x39

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_2_03:I

    const/16 v25, 0x3a

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp06_2_04:I

    const/16 v25, 0x3b

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_1_00:I

    const/16 v25, 0x3c

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_1_01:I

    const/16 v25, 0x3d

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_1_02:I

    const/16 v25, 0x3e

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_1_03:I

    const/16 v25, 0x3f

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_1_04:I

    const/16 v25, 0x40

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_2_00:I

    const/16 v25, 0x41

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_2_01:I

    const/16 v25, 0x42

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_2_02:I

    const/16 v25, 0x43

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_2_03:I

    const/16 v25, 0x44

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp07_2_04:I

    const/16 v25, 0x45

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_1_00:I

    const/16 v25, 0x46

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_1_01:I

    const/16 v25, 0x47

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_1_02:I

    const/16 v25, 0x48

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_1_03:I

    const/16 v25, 0x49

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_1_04:I

    const/16 v25, 0x4a

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_2_00:I

    const/16 v25, 0x4b

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_2_01:I

    const/16 v25, 0x4c

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_2_02:I

    const/16 v25, 0x4d

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_2_03:I

    const/16 v25, 0x4e

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp08_2_04:I

    const/16 v25, 0x4f

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_1_00:I

    const/16 v25, 0x50

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_1_01:I

    const/16 v25, 0x51

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_1_02:I

    const/16 v25, 0x52

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_1_03:I

    const/16 v25, 0x53

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_1_04:I

    const/16 v25, 0x54

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_2_00:I

    const/16 v25, 0x55

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_2_01:I

    const/16 v25, 0x56

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_2_02:I

    const/16 v25, 0x57

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_2_03:I

    const/16 v25, 0x58

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp09_2_04:I

    const/16 v25, 0x59

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_1_00:I

    const/16 v25, 0x5a

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_1_01:I

    const/16 v25, 0x5b

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_1_02:I

    const/16 v25, 0x5c

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_1_03:I

    const/16 v25, 0x5d

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_1_04:I

    const/16 v25, 0x5e

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_2_00:I

    const/16 v25, 0x5f

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_2_01:I

    const/16 v25, 0x60

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_2_02:I

    const/16 v25, 0x61

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_2_03:I

    const/16 v25, 0x62

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp10_2_04:I

    const/16 v25, 0x63

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_1_00:I

    const/16 v25, 0x64

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_1_01:I

    const/16 v25, 0x65

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_1_02:I

    const/16 v25, 0x66

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_1_03:I

    const/16 v25, 0x67

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_1_04:I

    const/16 v25, 0x68

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_2_00:I

    const/16 v25, 0x69

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_2_01:I

    const/16 v25, 0x6a

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_2_02:I

    const/16 v25, 0x6b

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_2_03:I

    const/16 v25, 0x6c

    aput v12, v2, v25

    sget v12, Lcom/android/settings/R$drawable;->rog_fp11_2_04:I

    const/16 v25, 0x6d

    aput v12, v2, v25

    sput-object v2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepIdArrayFirstPhase:[I

    const/16 v12, 0x5b

    new-array v12, v12, [I

    .line 187
    sget v25, Lcom/android/settings/R$drawable;->rog_fp12_1_00:I

    aput v25, v12, v3

    sget v3, Lcom/android/settings/R$drawable;->rog_fp12_1_01:I

    aput v3, v12, v4

    sget v3, Lcom/android/settings/R$drawable;->rog_fp12_1_02:I

    aput v3, v12, v5

    sget v3, Lcom/android/settings/R$drawable;->rog_fp12_1_03:I

    aput v3, v12, v6

    sget v3, Lcom/android/settings/R$drawable;->rog_fp12_1_04:I

    aput v3, v12, v7

    sget v3, Lcom/android/settings/R$drawable;->rog_fp12_2_00:I

    aput v3, v12, v8

    sget v3, Lcom/android/settings/R$drawable;->rog_fp12_2_01:I

    aput v3, v12, v9

    sget v3, Lcom/android/settings/R$drawable;->rog_fp12_2_02:I

    aput v3, v12, v10

    sget v3, Lcom/android/settings/R$drawable;->rog_fp12_2_03:I

    aput v3, v12, v11

    sget v3, Lcom/android/settings/R$drawable;->rog_fp12_2_04:I

    aput v3, v12, v0

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_1_00:I

    aput v0, v12, v13

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_1_01:I

    aput v0, v12, v14

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_1_02:I

    aput v0, v12, v15

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_1_03:I

    aput v0, v12, v16

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_1_04:I

    aput v0, v12, v17

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_2_00:I

    aput v0, v12, v18

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_2_01:I

    aput v0, v12, v19

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_2_02:I

    aput v0, v12, v20

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_2_03:I

    aput v0, v12, v21

    sget v0, Lcom/android/settings/R$drawable;->rog_fp13_2_04:I

    aput v0, v12, v22

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_1_00:I

    aput v0, v12, v23

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_1_01:I

    aput v0, v12, v24

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_1_02:I

    const/16 v3, 0x16

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_1_03:I

    const/16 v3, 0x17

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_1_04:I

    const/16 v3, 0x18

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_2_00:I

    const/16 v3, 0x19

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_2_01:I

    const/16 v3, 0x1a

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_2_02:I

    const/16 v3, 0x1b

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_2_03:I

    const/16 v3, 0x1c

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp14_2_04:I

    const/16 v3, 0x1d

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_1_00:I

    const/16 v3, 0x1e

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_1_01:I

    const/16 v3, 0x1f

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_1_02:I

    const/16 v3, 0x20

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_1_03:I

    const/16 v3, 0x21

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_1_04:I

    const/16 v3, 0x22

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_2_00:I

    const/16 v3, 0x23

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_2_01:I

    const/16 v3, 0x24

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_2_02:I

    const/16 v3, 0x25

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_2_03:I

    const/16 v3, 0x26

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp15_2_04:I

    const/16 v3, 0x27

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_1_00:I

    const/16 v3, 0x28

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_1_01:I

    const/16 v3, 0x29

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_1_02:I

    const/16 v3, 0x2a

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_1_03:I

    const/16 v3, 0x2b

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_1_04:I

    const/16 v3, 0x2c

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_2_00:I

    const/16 v3, 0x2d

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_2_01:I

    const/16 v3, 0x2e

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_2_02:I

    const/16 v3, 0x2f

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_2_03:I

    const/16 v3, 0x30

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp16_2_04:I

    const/16 v3, 0x31

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_1_00:I

    const/16 v3, 0x32

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_1_01:I

    const/16 v3, 0x33

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_1_02:I

    const/16 v3, 0x34

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_1_03:I

    const/16 v3, 0x35

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_1_04:I

    const/16 v3, 0x36

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_2_00:I

    const/16 v3, 0x37

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_2_01:I

    const/16 v3, 0x38

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_2_02:I

    const/16 v3, 0x39

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_2_03:I

    const/16 v3, 0x3a

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp17_2_04:I

    const/16 v3, 0x3b

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_1_00:I

    const/16 v3, 0x3c

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_1_01:I

    const/16 v3, 0x3d

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_1_02:I

    const/16 v3, 0x3e

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_1_03:I

    const/16 v3, 0x3f

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_1_04:I

    const/16 v3, 0x40

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_2_00:I

    const/16 v3, 0x41

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_2_01:I

    const/16 v3, 0x42

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_2_02:I

    const/16 v3, 0x43

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_2_03:I

    const/16 v3, 0x44

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp18_2_04:I

    const/16 v3, 0x45

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_1_00:I

    const/16 v3, 0x46

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_1_01:I

    const/16 v3, 0x47

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_1_02:I

    const/16 v3, 0x48

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_1_03:I

    const/16 v3, 0x49

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_1_04:I

    const/16 v3, 0x4a

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_2_00:I

    const/16 v3, 0x4b

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_2_01:I

    const/16 v3, 0x4c

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_2_02:I

    const/16 v3, 0x4d

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_2_03:I

    const/16 v3, 0x4e

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp19_2_04:I

    const/16 v3, 0x4f

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_1_00:I

    const/16 v3, 0x50

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_1_01:I

    const/16 v3, 0x51

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_1_02:I

    const/16 v3, 0x52

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_1_03:I

    const/16 v3, 0x53

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_1_04:I

    const/16 v3, 0x54

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_2_00:I

    const/16 v3, 0x55

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_2_01:I

    const/16 v3, 0x56

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_2_02:I

    const/16 v3, 0x57

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_2_03:I

    const/16 v3, 0x58

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_2_04:I

    const/16 v3, 0x59

    aput v0, v12, v3

    sget v0, Lcom/android/settings/R$drawable;->rog_fp20_2_05:I

    const/16 v3, 0x5a

    aput v0, v12, v3

    sput-object v12, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepIdArraySecondPhase:[I

    .line 281
    array-length v0, v2

    array-length v3, v12

    add-int/2addr v0, v3

    int-to-float v0, v0

    sput v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->TOTAL_FRAME:F

    .line 282
    array-length v0, v2

    sub-int/2addr v0, v4

    sput v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->INTERRUPT_STEP:I

    .line 283
    array-length v0, v1

    sput v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->INTERRUPT_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 290
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawFinishMask:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawInvalidProgress:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mShowSecondPhaseImage:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationRunning:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationFinished:Z

    const/16 v1, -0x270f

    .line 49
    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->currentAniStep:I

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isSecondPhaseNow:Z

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->animationHandler:Landroid/os/Handler;

    const/16 v0, 0x32

    .line 56
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_transition:I

    const/16 v0, 0x31

    .line 57
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_normal:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 420
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mTransitionRunnable:Ljava/lang/Runnable;

    .line 291
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawFinishMask:Z

    .line 44
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawInvalidProgress:Z

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mShowSecondPhaseImage:Z

    .line 46
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationRunning:Z

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationFinished:Z

    const/16 v0, -0x270f

    .line 49
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->currentAniStep:I

    .line 50
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isSecondPhaseNow:Z

    .line 55
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->animationHandler:Landroid/os/Handler;

    const/16 p2, 0x32

    .line 56
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_transition:I

    const/16 p2, 0x31

    .line 57
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_normal:I

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    .line 61
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 420
    new-instance p2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mTransitionRunnable:Ljava/lang/Runnable;

    .line 296
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 300
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawFinishMask:Z

    .line 44
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawInvalidProgress:Z

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mShowSecondPhaseImage:Z

    .line 46
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationRunning:Z

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationFinished:Z

    const/16 p3, -0x270f

    .line 49
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->currentAniStep:I

    .line 50
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isSecondPhaseNow:Z

    .line 55
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->animationHandler:Landroid/os/Handler;

    const/16 p2, 0x32

    .line 56
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_transition:I

    const/16 p2, 0x31

    .line 57
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_normal:I

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    .line 61
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 420
    new-instance p2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mTransitionRunnable:Ljava/lang/Runnable;

    .line 301
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 305
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawFinishMask:Z

    .line 44
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawInvalidProgress:Z

    .line 45
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mShowSecondPhaseImage:Z

    .line 46
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationRunning:Z

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationFinished:Z

    const/16 p3, -0x270f

    .line 49
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->currentAniStep:I

    .line 50
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isSecondPhaseNow:Z

    .line 55
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->animationHandler:Landroid/os/Handler;

    const/16 p2, 0x32

    .line 56
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_transition:I

    const/16 p2, 0x31

    .line 57
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_normal:I

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    .line 61
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 420
    new-instance p2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mTransitionRunnable:Ljava/lang/Runnable;

    .line 306
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->currentAniStep:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->currentAniStep:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_normal:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->fps_transition:I

    return p0
.end method

.method private createAnimationBitmap(II)V
    .locals 2

    .line 480
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->currentAniStep:I

    .line 481
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private createProgressBitmap(II)V
    .locals 4

    .line 445
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mRatio:I

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->progressMapStep(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 446
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mRatio:I

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mLastRatio:I

    if-eq v1, v3, :cond_7

    .line 451
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mShowSecondPhaseImage:Z

    if-eqz v1, :cond_4

    .line 453
    sget v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->INTERRUPT_STEP:I

    if-le v0, v1, :cond_2

    .line 454
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationRunning:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationFinished:Z

    if-nez p1, :cond_6

    .line 455
    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationRunning:Z

    .line 456
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->animationHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 460
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isSecondPhaseNow:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepIdArrayFirstPhase:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_6

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 464
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isSecondPhaseNow:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepIdArrayFirstPhase:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_6

    .line 465
    :cond_5
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 467
    :cond_6
    :goto_0
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mRatio:I

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mLastRatio:I

    .line 470
    :cond_7
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mNextRatio:I

    int-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->progressMapStep(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->nextStep:I

    .line 471
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_8

    .line 472
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->nextStep:I

    .line 475
    :cond_8
    sget-object p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepIdArrayFirstPhase:[I

    array-length p1, p1

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_9

    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isSecondPhaseNow:Z

    :cond_9
    return-void
.end method

.method private drawFingerprintProgress(IIILandroid/graphics/Canvas;)V
    .locals 8

    .line 487
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationRunning:Z

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0, p2, p3}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->createProgressBitmap(II)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->createAnimationBitmap(II)V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p2

    int-to-float v5, p3

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p4

    .line 492
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 493
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x1

    .line 494
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 495
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 496
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    invoke-virtual {p4, p0, p1, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 497
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    .line 501
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 502
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 503
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 504
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public static getInterruptRatio()D
    .locals 2

    .line 286
    sget v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->INTERRUPT_STEP:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    sget v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->TOTAL_FRAME:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 310
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFinishMask:I

    .line 313
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_image_w:I

    .line 314
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mImageW:I

    .line 315
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_image_h:I

    .line 316
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mImageH:I

    .line 318
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_content_w:I

    .line 319
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContentW:I

    .line 320
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_content_h:I

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContentH:I

    .line 323
    sget-object p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsArray:[I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)V

    .line 324
    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 326
    sget-object p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepIdArrayFirstPhase:[I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)V

    .line 327
    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 329
    sget-object p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepIdArraySecondPhase:[I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)V

    .line 330
    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method private synthetic lambda$init$0(I)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$init$1(I)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$init$2(I)V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected measureDimension(II)I
    .locals 1

    .line 373
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 374
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 380
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 391
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 392
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

    .line 393
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v8

    const/16 v2, 0xff

    .line 397
    :try_start_0
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->drawFingerprintProgress(IIILandroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :catch_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawFinishMask:Z

    if-eqz v0, :cond_0

    .line 403
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 404
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->asus_fingerprint_progress_finish:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xc8

    .line 405
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 406
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    .line 407
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFinishMask:I

    int-to-float v4, p0

    move-object v2, p1

    move v5, v9

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 409
    :cond_0
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 335
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 338
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 340
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContentW:I

    if-lt v0, v2, :cond_0

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContentH:I

    if-lt v1, v3, :cond_0

    .line 341
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->measureDimension(II)I

    move-result p1

    .line 342
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContentH:I

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->measureDimension(II)I

    move-result p2

    .line 343
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

    .line 355
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContentH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 356
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 358
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContentW:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 359
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContentH:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 362
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->measureDimension(II)I

    move-result p1

    .line 363
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->measureDimension(II)I

    move-result p2

    .line 365
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    .line 349
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mContentH:I

    invoke-virtual {p0, v2, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public progressMapStep(D)D
    .locals 4

    .line 416
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-double v0, p0

    const-wide/16 v2, 0x0

    sub-double/2addr p1, v2

    sub-double/2addr v0, v2

    mul-double/2addr p1, v0

    const-wide v0, 0x40c3880000000000L    # 10000.0

    div-double/2addr p1, v0

    add-double/2addr p1, v2

    return-wide p1
.end method

.method public setFinishProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 526
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mDrawFinishMask:Z

    .line 527
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFinishMask:I

    .line 528
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 509
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mRatio:I

    if-eq v0, p1, :cond_1

    .line 510
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mRatio:I

    .line 514
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationRunning:Z

    if-eqz v0, :cond_0

    int-to-double v0, p1

    .line 515
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->progressMapStep(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 516
    sget v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->INTERRUPT_STEP:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintTransitionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mFingerprintStepId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public showSecondPhaseImage(ZZ)V
    .locals 0

    .line 567
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->mShowSecondPhaseImage:Z

    if-eqz p2, :cond_0

    .line 570
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method
