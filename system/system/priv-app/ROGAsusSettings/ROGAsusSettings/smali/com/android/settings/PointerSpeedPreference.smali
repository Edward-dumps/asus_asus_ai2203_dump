.class public Lcom/android/settings/PointerSpeedPreference;
.super Lcom/android/settings/SeekBarDialogPreference;
.source "PointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PointerSpeedPreference$SavedState;,
        Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mLastProgress:I

.field private mOldSpeed:I

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/android/settings/PointerSpeedPreference;->mLastProgress:I

    .line 48
    new-instance p1, Lcom/android/settings/PointerSpeedPreference$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/PointerSpeedPreference$1;-><init>(Lcom/android/settings/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 57
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PointerSpeedPreference;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->onSpeedChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/PointerSpeedPreference;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/PointerSpeedPreference;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/PointerSpeedPreference;)Landroid/hardware/input/InputManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/PointerSpeedPreference;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/settings/PointerSpeedPreference;->mLastProgress:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/PointerSpeedPreference;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/android/settings/PointerSpeedPreference;->mLastProgress:I

    return p1
.end method

.method private onSpeedChanged()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 139
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private restoreOldState()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    iget v1, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mRestoredOldState:Z

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 75
    invoke-static {p1}, Lcom/android/settings/SeekBarDialogPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0xe

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    .line 78
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 p1, p1, 0x7

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;-><init>(Lcom/android/settings/PointerSpeedPreference;Lcom/android/settings/PointerSpeedPreference$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p1

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v0, p0, p1}, Lcom/android/settingslib/widget/ThemeUtils;->tintSeekbar(Landroid/content/Context;Landroid/widget/SeekBar;I)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .line 62
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onClick()V

    .line 64
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    .line 65
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 64
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mRestoredOldState:Z

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    .line 144
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onDialogClosed(Z)V

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 150
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    .line 149
    invoke-virtual {p1, v1, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->restoreOldState()V

    .line 155
    :goto_0
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/PointerSpeedPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    check-cast p1, Lcom/android/settings/PointerSpeedPreference$SavedState;

    .line 189
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 190
    iget v0, p1, Lcom/android/settings/PointerSpeedPreference$SavedState;->oldSpeed:I

    iput v0, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    .line 191
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    iget p1, p1, Lcom/android/settings/PointerSpeedPreference$SavedState;->progress:I

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    return-void

    .line 184
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 167
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v1, Lcom/android/settings/PointerSpeedPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/PointerSpeedPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, v1, Lcom/android/settings/PointerSpeedPreference$SavedState;->progress:I

    .line 173
    iget v0, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    iput v0, v1, Lcom/android/settings/PointerSpeedPreference$SavedState;->oldSpeed:I

    .line 176
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->restoreOldState()V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method
