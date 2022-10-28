.class public Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OneHandModeGestureSensitivitySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBackGestureInsetScales:[F

.field private mDefaultBackGestureInset:F

.field private mIndicatorView:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$L-n7kPnkfoHjOenXBtkSdREWSYE(Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->lambda$initSeekBarPreference$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mTyFA2CLnnVkSkBTroE372CBiZ4(Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->lambda$initSeekBarPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 169
    new-instance v0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings$1;

    sget v1, Lcom/android/settings/R$xml;->gesture_navigation_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 160
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 161
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 163
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private initSeekBarPreference(Ljava/lang/String;)V
    .locals 6

    .line 126
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/LabeledSeekBarPreference;

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_mode_gesture_inset_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 130
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 136
    :goto_0
    iget-object v4, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mBackGestureInsetScales:[F

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 137
    aget v4, v4, v3

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    move v2, v3

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 145
    new-instance v0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    new-instance v0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->setOnPreferenceChangeStopListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private synthetic lambda$initSeekBarPreference$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 146
    iget p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mDefaultBackGestureInset:F

    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mBackGestureInsetScales:[F

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p2, v0, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 147
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mIndicatorView:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;

    invoke-virtual {p0, p1}, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;->setIndicatorWidth(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initSeekBarPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mIndicatorView:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;->setIndicatorWidth(I)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mBackGestureInsetScales:[F

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p1, p1, p2

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "one_hand_mode_gesture_inset_scale"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 112
    sget p0, Lcom/android/settings/R$string;->help_uri_default:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OneHandModeGestureSensitivitySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 106
    sget p0, Lcom/android/settings/R$xml;->one_hand_mode_gesture_sensitivity_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance p1, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mIndicatorView:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 74
    sget p2, Lcom/android/settings/R$dimen;->one_hand_mode_gesture_sensitivity_inset_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mDefaultBackGestureInset:F

    .line 75
    sget p2, Lcom/android/settings/R$array;->one_hand_mode_gesture_sensitivity_scales:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mBackGestureInsetScales:[F

    const-string p1, "gesture_sensitivity"

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->initSeekBarPreference(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 80
    new-instance p2, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    .line 82
    sget p0, Lcom/android/settings/R$string;->back_sensitivity_dialog_message:I

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p0, 0x0

    .line 83
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 84
    sget p0, Lcom/android/settings/R$layout;->asus_preference_footer:I

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 86
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mIndicatorView:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeGestureSensitivitySettings;->mIndicatorView:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 93
    invoke-virtual {v1, p0}, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;->getLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
