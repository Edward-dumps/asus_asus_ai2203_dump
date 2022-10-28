.class public Lcom/android/settings/emergency/EmergencyDisclaimerFragment;
.super Landroidx/fragment/app/Fragment;
.source "EmergencyDisclaimerFragment.java"


# direct methods
.method public static synthetic $r8$lambda$3Y0U3D10r9UiZiJD81ANdKSKHOQ(Lcom/android/settings/emergency/EmergencyDisclaimerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/emergency/EmergencyDisclaimerFragment;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DV__fJXsFbSbIF72iRIO-BJYZNg(Landroid/widget/Button;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/emergency/EmergencyDisclaimerFragment;->lambda$onCreateView$0(Landroid/widget/Button;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFScENL5MAfGiGaioPKDFmY4OGs(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/emergency/EmergencyDisclaimerFragment;->lambda$onCreateView$1(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private canResolveIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private combineAllString()Landroid/text/Spanned;
    .locals 9

    .line 105
    sget v0, Lcom/android/settings/R$string;->terms_of_services_1:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->getTapTimes()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    .line 106
    sget v2, Lcom/android/settings/R$string;->terms_of_services_2:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    .line 107
    sget v3, Lcom/android/settings/R$string;->terms_of_services_3:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    .line 108
    sget v5, Lcom/android/settings/R$string;->terms_of_services_4:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    .line 109
    sget v6, Lcom/android/settings/R$string;->terms_of_services_5:I

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->getTapTimes()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p0, v6, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v6

    .line 110
    sget v7, Lcom/android/settings/R$string;->terms_of_services_8:I

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v0, v7, v4

    aput-object v2, v7, v1

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object p0, v7, v0

    .line 112
    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spanned;

    return-object p0
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/widget/Button;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 56
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private static synthetic lambda$onCreateView$1(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 4

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "emergency_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "has_agree_disclaimer"

    const/4 v2, 0x1

    .line 73
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->emergency_gesture_settings_package:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.action.emergency_gesture_settings"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/EmergencyDisclaimerFragment;->canResolveIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4000000

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    .line 95
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.Emergency_Gesture_Settings"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 48
    sget p2, Lcom/android/settings/R$layout;->emergency_disclaimer:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 49
    sget p2, Lcom/android/settings/R$id;->disclaimer_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/emergency/EmergencyDisclaimerFragment;->combineAllString()Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 53
    sget p3, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 54
    sget v0, Lcom/android/settings/R$id;->next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    new-instance v1, Lcom/android/settings/emergency/EmergencyDisclaimerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/settings/emergency/EmergencyDisclaimerFragment$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Button;)V

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    sget v1, Lcom/android/settings/R$id;->checkbox_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    new-instance v2, Lcom/android/settings/emergency/EmergencyDisclaimerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lcom/android/settings/emergency/EmergencyDisclaimerFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {p3, v2, v3}, Lcom/android/settingslib/widget/ThemeUtils;->tintCheckBoxColor(Landroid/widget/CheckBox;II)V

    .line 66
    invoke-static {v1}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 69
    :cond_0
    new-instance p2, Lcom/android/settings/emergency/EmergencyDisclaimerFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/emergency/EmergencyDisclaimerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/emergency/EmergencyDisclaimerFragment;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 35
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "emergency_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "has_agree_disclaimer"

    .line 39
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
