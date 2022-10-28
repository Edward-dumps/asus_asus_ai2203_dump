.class Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;
.super Ljava/lang/Object;
.source "ImeiInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/imei/ImeiInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mDialog"
.end annotation


# instance fields
.field spf:Lcom/android/settings/SettingsPreferenceFragment;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/imei/ImeiInformation;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/imei/ImeiInformation;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->this$0:Lcom/android/settings/deviceinfo/imei/ImeiInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/imei/ImeiInformation;Lcom/android/settings/deviceinfo/imei/ImeiInformation$1;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;-><init>(Lcom/android/settings/deviceinfo/imei/ImeiInformation;)V

    return-void
.end method


# virtual methods
.method public removeViewFromScreen(Ljava/lang/String;)V
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeViewFromScreen(): spf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeiInformation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 337
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public setSettingsPreferenceFragment(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    .line 311
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSettingsPreferenceFragment(): spf = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImeiInformation"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setText(): spf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeiInformation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->this$0:Lcom/android/settings/deviceinfo/imei/ImeiInformation;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 324
    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 326
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
