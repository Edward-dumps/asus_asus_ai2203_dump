.class public Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DualWifiNetworkDetailsFragment2.java"

# interfaces
.implements Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;


# instance fields
.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mDualWifiDetailPreferenceController2:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;

.field private mDualWifiDialogListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    .line 75
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mDualWifiDialogListeners:Ljava/util/List;

    return-void
.end method

.method private isEditable()Z
    .locals 1

    .line 271
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result p0

    return p0
.end method

.method private setupNetworksDetailTracker()V
    .locals 12

    .line 230
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 235
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNetworkDetailsFrg2{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
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

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 238
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 239
    new-instance v6, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2$1;-><init>(Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;Ljava/time/ZoneId;)V

    .line 246
    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDualWifiTrackerLibProvider()Lcom/android/settings/dualwifi/DualWifiTrackerLibProvider;

    move-result-object v1

    .line 249
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v4, Landroid/os/Handler;

    .line 251
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 252
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v7, 0x3a98

    const-wide/16 v9, 0x2710

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v11, "key_chosen_wifientry_key"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 248
    invoke-interface/range {v1 .. v11}, Lcom/android/settings/dualwifi/DualWifiTrackerLibProvider;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    .line 169
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 170
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->setupNetworksDetailTracker()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/android/settings/dualwifi/details/DualWifiSecondSummaryController2;

    invoke-direct {v1, p1}, Lcom/android/settings/dualwifi/details/DualWifiSecondSummaryController2;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v1, v0}, Lcom/android/settings/dualwifi/details/DualWifiSecondSummaryController2;->setDualWifiEntry(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    .line 176
    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v5, Landroid/os/Handler;

    .line 183
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    .line 185
    invoke-static {p1}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    .line 178
    invoke-static/range {v1 .. v8}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->newInstance(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lasus/net/vicewifi/WifiViceManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mDualWifiDetailPreferenceController2:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;

    .line 187
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v1, Lcom/android/settings/dualwifi/details/DualWifiAutoConnectPreferenceController2;

    invoke-direct {v1, p1}, Lcom/android/settings/dualwifi/details/DualWifiAutoConnectPreferenceController2;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v1, v0}, Lcom/android/settings/dualwifi/details/DualWifiAutoConnectPreferenceController2;->setDualWifiEntry(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    .line 192
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;-><init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    .line 201
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v2, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;

    invoke-direct {v2, p1}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v2, v0}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->setDualWifiEntry(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v3, Lcom/android/settings/dualwifi/details/DualWifiSubscriptionDetailPreferenceController2;

    invoke-direct {v3, p1}, Lcom/android/settings/dualwifi/details/DualWifiSubscriptionDetailPreferenceController2;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v3, v0}, Lcom/android/settings/dualwifi/details/DualWifiSubscriptionDetailPreferenceController2;->setDualWifiEntry(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mDualWifiDialogListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mDualWifiDetailPreferenceController2:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mDualWifiDialogListeners:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mDualWifiDialogListeners:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method protected displayPreferenceControllers()V
    .locals 3

    .line 290
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 291
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 296
    instance-of v2, v1, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0x25b

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiNetworkDetailsFrg2"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 103
    sget p0, Lcom/android/settings/R$xml;->wifi_network_details_fragment2:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mDualWifiDetailPreferenceController2:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;

    if-nez p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)Lcom/android/settings/dualwifi/DualWifiDialog2;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .line 127
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ic_mode_edit"

    const-string v3, "drawable"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 131
    sget v2, Lcom/android/settings/R$string;->wifi_modify:I

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 132
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 133
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 135
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 88
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 162
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mDualWifiDetailPreferenceController2:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->canModifyNetwork()Z

    move-result p1

    if-nez p1, :cond_2

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-nez p1, :cond_1

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 149
    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v2

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    .line 152
    new-instance p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v3, 0x0

    .line 153
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p1, v0, v3, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return v1
.end method

.method public onSubmit(Lcom/android/settings/dualwifi/DualWifiDialog2;)V
    .locals 1

    .line 224
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->mDualWifiDialogListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;

    .line 225
    invoke-interface {v0, p1}, Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;->onSubmit(Lcom/android/settings/dualwifi/DualWifiDialog2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshPreferences()V
    .locals 0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->displayPreferenceControllers()V

    return-void
.end method
