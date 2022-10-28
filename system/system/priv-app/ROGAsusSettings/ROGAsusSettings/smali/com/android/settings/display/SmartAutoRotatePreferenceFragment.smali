.class public Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SmartAutoRotatePreferenceFragment.java"


# static fields
.field static final AUTO_ROTATE_SWITCH_PREFERENCE_ID:Ljava/lang/String; = "auto_rotate_switch"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSwitchBarController:Lcom/android/settings/display/AutoRotateSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 129
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->auto_rotate_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)Lcom/android/settings/display/AutoRotateSwitchBarController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mSwitchBarController:Lcom/android/settings/display/AutoRotateSwitchBarController;

    return-object p0
.end method


# virtual methods
.method createHeader(Lcom/android/settings/SettingsActivity;)V
    .locals 3

    .line 82
    invoke-static {p1}, Lcom/android/settings/display/SmartAutoRotateController;->isRotationResolverServiceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->auto_rotate_settings_primary_switch_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/asus/commonresx/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v0}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    .line 87
    new-instance v1, Lcom/android/settings/display/AutoRotateSwitchBarController;

    .line 88
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/display/AutoRotateSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mSwitchBarController:Lcom/android/settings/display/AutoRotateSwitchBarController;

    const-string p1, "auto_rotate_switch"

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SmartAutoRotatePreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x74b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 56
    sget p0, Lcom/android/settings/R$xml;->auto_rotate_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    const-class p1, Lcom/android/settings/display/SmartAutoRotateController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/SmartAutoRotateController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/display/SmartAutoRotateController;->init(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->createHeader(Lcom/android/settings/SettingsActivity;)V

    const-string p3, "footer_preference"

    .line 71
    invoke-virtual {p0, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 73
    sget v0, Lcom/android/settings/R$string;->smart_rotate_text_headline:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {p2}, Lcom/android/settings/display/SmartAutoRotateController;->isRotationResolverServiceAvailable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;-><init>(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    return-void
.end method
