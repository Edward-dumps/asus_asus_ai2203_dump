.class public Lcom/android/settings/display/PowerKeyController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PowerKeyController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;

.field private final mPreferenceKey:Ljava/lang/String;

.field private summaryRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 23
    sget v1, Lcom/android/settings/R$string;->asus_power_key_selection_classic:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->asus_power_key_selection_full_screen_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->asus_power_key_selection_full_screen_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->asus_power_key_selection_full_screen_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/display/PowerKeyController;->summaryRes:[I

    const-string v0, "display_power_key_pref"

    .line 31
    iput-object v0, p0, Lcom/android/settings/display/PowerKeyController;->mPreferenceKey:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PowerKeyController;->mContentResolver:Landroid/content/ContentResolver;

    .line 33
    iput-object p1, p0, Lcom/android/settings/display/PowerKeyController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/display/PowerKeyController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PowerKeyController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/display/PowerKeyController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 38
    invoke-static {}, Lcom/android/settings/Utils;->isPicaso()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "display_power_menu"

    invoke-static {p0}, Lcom/android/settings/Utils;->getPreloadIndonesiaStyle(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/display/PowerKeyController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "power_key_ui_mode"

    invoke-static {p1, v0}, Lcom/android/settings/display/PowerKeyItemController;->getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 58
    iget-object v0, p0, Lcom/android/settings/display/PowerKeyController;->mPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/display/PowerKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/display/PowerKeyController;->summaryRes:[I

    aget p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
