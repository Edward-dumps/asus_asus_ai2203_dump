.class public Lcom/android/settings/display/PowerKeyHeaderController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PowerKeyHeaderController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PowerKeyHeaderController$OnChangeListener;
    }
.end annotation


# instance fields
.field private drawableRes:[I

.field private drawableResCN:[I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mOnChangeListener:Lcom/android/settings/display/PowerKeyHeaderController$OnChangeListener;

.field private mPreference:Lcom/android/settingslib/widget/IllustrationPreference;

.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "power_key_header"

    .line 48
    iput-object v0, p0, Lcom/android/settings/display/PowerKeyHeaderController;->mPreferenceKey:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 54
    sget v2, Lcom/android/settings/R$drawable;->ic_powermenu_ww:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settings/R$drawable;->ic_power_fullscreen_01_ww:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$drawable;->ic_power_fullscreen_02_ww:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/settings/R$drawable;->ic_power_fullscreen_03_ww:I

    const/4 v6, 0x3

    aput v2, v1, v6

    iput-object v1, p0, Lcom/android/settings/display/PowerKeyHeaderController;->drawableRes:[I

    new-array v0, v0, [I

    .line 59
    sget v1, Lcom/android/settings/R$drawable;->ic_powermenu_cn:I

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$drawable;->ic_power_fullscreen_01_cn:I

    aput v1, v0, v4

    sget v1, Lcom/android/settings/R$drawable;->ic_power_fullscreen_02_cn:I

    aput v1, v0, v5

    sget v1, Lcom/android/settings/R$drawable;->ic_power_fullscreen_03_cn:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/display/PowerKeyHeaderController;->drawableResCN:[I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PowerKeyHeaderController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/display/PowerKeyHeaderController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/IllustrationPreference;

    iput-object p1, p0, Lcom/android/settings/display/PowerKeyHeaderController;->mPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "power_key_header"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setOnChangeListener(Lcom/android/settings/display/PowerKeyHeaderController$OnChangeListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/display/PowerKeyHeaderController;->mOnChangeListener:Lcom/android/settings/display/PowerKeyHeaderController$OnChangeListener;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/display/PowerKeyHeaderController;->mPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/PowerKeyHeaderController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "power_key_ui_mode"

    invoke-static {p1, v0}, Lcom/android/settings/display/PowerKeyItemController;->getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/android/settings/display/PowerKeyHeaderController;->mPreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isCNSKU()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/display/PowerKeyHeaderController;->drawableResCN:[I

    aget p0, p0, p1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/PowerKeyHeaderController;->drawableRes:[I

    aget p0, p0, p1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    return-void
.end method
