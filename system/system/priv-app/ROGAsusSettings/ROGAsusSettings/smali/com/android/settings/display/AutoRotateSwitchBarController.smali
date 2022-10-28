.class public Lcom/android/settings/display/AutoRotateSwitchBarController;
.super Ljava/lang/Object;
.source "AutoRotateSwitchBarController.java"

# interfaces
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 47
    iput-object p1, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz p3, :cond_0

    .line 50
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private setRotationLock(Z)Z
    .locals 4

    xor-int/lit8 v0, p1, 0x1

    .line 96
    iget-object v1, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mContext:Landroid/content/Context;

    const/16 v3, 0x6d9

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 98
    iget-object p0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected onChange()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 82
    iget-object v1, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1}, Lcom/asus/commonresx/widget/MainSwitchBar;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 84
    iget-boolean v1, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->removeOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 88
    iget-boolean v0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mValidListener:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mValidListener:Z

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/AutoRotateSwitchBarController;->onChange()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->removeOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/display/AutoRotateSwitchBarController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p2}, Lcom/android/settings/display/AutoRotateSwitchBarController;->setRotationLock(Z)Z

    return-void
.end method
