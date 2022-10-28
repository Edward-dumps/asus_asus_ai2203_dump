.class public Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;
.super Landroid/app/Activity;
.source "FacelockEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;

.field private mLayout:Landroid/view/ViewGroup;

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected dockingRefresh()V
    .locals 0

    return-void
.end method

.method protected getBackButton()Landroid/widget/Button;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    const-class v1, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 216
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p0, v1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    .line 217
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 190
    sget v0, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected initButtonListener()V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected initViews()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mLayout:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 135
    invoke-static {p0}, Lcom/asus/commonres/AsusResUtils;->setNavigationBar(Landroid/app/Activity;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onBackButtonClick()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onBackButtonClick()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onNextButtonClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lcom/asus/commonres/AsusResUtils;->getAsusResThemeStyle(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 64
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    sget v1, Lcom/android/settings/R$layout;->facelock_base_layout:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mLayout:Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mUserId:I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 0

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->initViews()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->initButtonListener()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;

    .line 90
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 96
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 97
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 98
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/16 v4, 0x400

    if-ne p0, v3, :cond_1

    .line 101
    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    or-int/lit16 p0, v2, 0x804

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    or-int/lit16 p0, v2, 0x400

    and-int/lit16 p0, p0, -0x801

    .line 111
    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1

    .line 183
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 184
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    sget p1, Lcom/android/settings/R$id;->facelock_icon:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    return-void
.end method

.method protected setSubContentView(I)V
    .locals 2

    .line 175
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setSubContentView(Landroid/view/View;Z)V

    return-void
.end method

.method public setSubContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setSubContentView(Landroid/view/View;Z)V

    return-void
.end method

.method public setSubContentView(Landroid/view/View;Z)V
    .locals 2

    .line 144
    sget p2, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSubContentView content="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FacelockEnrollBase"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "setSubContentView init layout fail"

    .line 154
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
