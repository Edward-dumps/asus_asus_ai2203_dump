.class Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;
.super Ljava/lang/Object;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "mDialog"
.end annotation


# instance fields
.field spf:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;)V
    .locals 0

    .line 1193
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public removeSettingFromScreen(Ljava/lang/String;)V
    .locals 2

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSettingFromScreen(): spf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    if-nez v0, :cond_0

    return-void

    .line 1221
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1223
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public setSettingsPreferenceFragment(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    .line 1196
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    .line 1197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSettingsPreferenceFragment(): spf = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimStatus"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setText(): spf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    if-nez v0, :cond_0

    return-void

    .line 1205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText(): key = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", text = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    invoke-static {}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$2300()Ljava/lang/String;

    move-result-object p2

    .line 1210
    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->spf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1212
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
