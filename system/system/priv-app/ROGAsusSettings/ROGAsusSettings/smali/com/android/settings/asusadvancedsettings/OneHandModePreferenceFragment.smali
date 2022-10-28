.class public Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OneHandModePreferenceFragment.java"

# interfaces
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCr:Landroid/content/ContentResolver;

.field private mHasOnehandGestureFeature:Z

.field mOneHandModeLayoutPreferenceController:Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;

.field private mOneHandModeObserver:Landroid/database/ContentObserver;

.field private mSettingsKeyName:Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private final sControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment$2;

    invoke-direct {v0}, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, "accessibility_onehand_ctrl_enabled"

    .line 48
    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mSettingsKeyName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mHasOnehandGestureFeature:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->sControllers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->getSwitchState()Z

    move-result p0

    return p0
.end method

.method private buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->sControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 133
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->sControllers:Ljava/util/List;

    return-object p0
.end method

.method private getSwitchState()Z
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isOneHandedModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 126
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OneHandModePreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 138
    sget p0, Lcom/android/settings/R$xml;->one_hand_mode_fragment:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 79
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 80
    invoke-virtual {p1, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    .line 82
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->getSwitchState()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 71
    const-class p1, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mOneHandModeLayoutPreferenceController:Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->setLifecycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mActivity:Landroid/app/Activity;

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "asus.software.onehand.gesture"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mHasOnehandGestureFeature:Z

    if-eqz p1, :cond_0

    const-string p1, "accessibility_onehand_ctrl_enabled"

    .line 59
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mSettingsKeyName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "accessibility_onehand_ctrl_quick_trigger_enabled"

    .line 61
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mSettingsKeyName:Ljava/lang/String;

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mCr:Landroid/content/ContentResolver;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mCr:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mOneHandModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 98
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mOneHandModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment$1;-><init>(Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mOneHandModeObserver:Landroid/database/ContentObserver;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mSettingsKeyName:Ljava/lang/String;

    .line 111
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mOneHandModeObserver:Landroid/database/ContentObserver;

    .line 110
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setOneHandedModeEnabled(Landroid/content/Context;Z)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mActivity:Landroid/app/Activity;

    xor-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setSwipeDownNotificationEnabled(Landroid/content/Context;Z)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    return-void
.end method
