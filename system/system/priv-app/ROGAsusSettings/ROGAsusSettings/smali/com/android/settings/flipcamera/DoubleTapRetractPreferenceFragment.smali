.class public Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DoubleTapRetractPreferenceFragment.java"

# interfaces
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final RETRACT_CAMERA_DELAY:I

.field private mActivity:Landroid/app/Activity;

.field private mCalibrateLayout:Landroid/widget/LinearLayout;

.field private mMotorServiceConnection:Landroid/content/ServiceConnection;

.field private mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

.field private mRetractButton:Landroid/widget/Button;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    const/16 v0, 0x7d0

    .line 36
    iput v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->RETRACT_CAMERA_DELAY:I

    .line 154
    new-instance v0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$2;-><init>(Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mMotorServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;)Landroid/widget/Button;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mRetractButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;Lcom/asus/motorservice/IMotorService;)Lcom/asus/motorservice/IMotorService;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    return-object p1
.end method

.method private bindToMotorService()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    const-string v1, "DoubleTapRetractPreferenceFragment"

    if-eqz v0, :cond_0

    const-string v0, "bindToMotorService(): Already bind to MotorService!"

    .line 144
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "bindToMotorService()"

    .line 146
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.asus.motorservice.MotorService"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.asus.motorservice"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mMotorServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 51
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 56
    invoke-virtual {v0}, Lcom/asus/commonresx/widget/MainSwitchBar;->hide()V

    .line 57
    sget v0, Lcom/android/settings/R$string;->asus_advanced_settings_camera_retraction_category:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->bindToMotorService()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mRetractButton:Landroid/widget/Button;

    const-string v1, "DoubleTapRetractPreferenceFragment"

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 112
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    const-string v0, "com.android.settings"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3}, Lcom/asus/motorservice/IMotorService;->forceControlRotate(Ljava/lang/String;IZ)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mRetractButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$1;-><init>(Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mCalibrateLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 133
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/settings/flipcamera/CalibrateCameraAnglePreferenceController;->startCalibrateSettings(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mMotorServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "double_tap_retract_camera"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102003f

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->double_tap_retract_camera:I

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mActivity:Landroid/app/Activity;

    .line 80
    sget v0, Lcom/android/settings/R$id;->retract_camera:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mRetractButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    sget v0, Lcom/android/settings/R$id;->calibrate_angle_entry:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mCalibrateLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/flipcamera/CalibrateCameraAnglePreferenceController;->isPackageExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mCalibrateLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->mCalibrateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
