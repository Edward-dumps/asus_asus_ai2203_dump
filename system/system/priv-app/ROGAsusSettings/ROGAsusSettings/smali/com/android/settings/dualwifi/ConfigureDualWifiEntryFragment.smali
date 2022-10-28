.class public Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ConfigureDualWifiEntryFragment.java"

# interfaces
.implements Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

.field private mSubmitBtn:Landroid/widget/Button;

.field private mUiController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$YyueqtoFTSdCflW1EKv5EZDsgAY(Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4jpQ4udmsODgK2QtK_EFhAU1mM(Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->handleSubmitAction()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->handleCancelAction()V

    return-void
.end method

.method private setupNetworkDetailsTracker()V
    .locals 12

    .line 206
    iget-object v0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 211
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigureDualWifiEntryFragment{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 214
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 215
    new-instance v6, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment$1;-><init>(Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;Ljava/time/ZoneId;)V

    .line 222
    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDualWifiTrackerLibProvider()Lcom/android/settings/dualwifi/DualWifiTrackerLibProvider;

    move-result-object v1

    .line 225
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v4, Landroid/os/Handler;

    .line 227
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 228
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v7, 0x3a98

    const-wide/16 v9, 0x2710

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v11, "key_chosen_wifientry_key"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 224
    invoke-interface/range {v1 .. v11}, Lcom/android/settings/dualwifi/DualWifiTrackerLibProvider;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->handleSubmitAction()V

    return-void
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x708

    return p0
.end method

.method public getMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mSubmitBtn:Landroid/widget/Button;

    return-object p0
.end method

.method handleCancelAction()V
    .locals 0

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method handleSubmitAction()V
    .locals 3

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 195
    iget-object p0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mUiController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const-string v2, "network_config_key"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, -0x1

    .line 196
    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 197
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->setupNetworkDetailsTracker()V

    .line 66
    iget-object p1, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v0, Lcom/android/settings/R$style;->Style_Asusres_AlertDialog_ButtonBar:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 88
    sget p3, Lcom/android/settings/R$layout;->wifi_add_network_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102001b

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    .line 93
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const p2, 0x1020019

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mSubmitBtn:Landroid/widget/Button;

    const p2, 0x102001a

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mCancelBtn:Landroid/widget/Button;

    .line 98
    iget-object p2, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mSubmitBtn:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p2, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mCancelBtn:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 102
    iget-object p2, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/settingslib/widget/ThemeUtils;->tintButtonText(Landroid/widget/Button;Landroid/content/Context;)V

    .line 103
    iget-object p2, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/settingslib/widget/ThemeUtils;->tintButtonText(Landroid/widget/Button;Landroid/content/Context;)V

    .line 106
    :cond_1
    new-instance p2, Lcom/android/settings/dualwifi/DualWifiConfigController2;

    iget-object p3, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->getMode()I

    move-result v1

    invoke-direct {p2, p0, p1, p3, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;-><init>(Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;Landroid/view/View;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V

    iput-object p2, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mUiController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 114
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 115
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 125
    iget-object p0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mUiController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showSecurityFields(ZZ)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 132
    iget-object p0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mUiController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->updatePassword()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
