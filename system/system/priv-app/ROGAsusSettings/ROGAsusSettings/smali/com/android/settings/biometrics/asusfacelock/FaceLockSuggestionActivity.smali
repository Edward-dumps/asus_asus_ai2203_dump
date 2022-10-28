.class public Lcom/android/settings/biometrics/asusfacelock/FaceLockSuggestionActivity;
.super Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;
.source "FaceLockSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "com.asus.faceunlockservice"

    .line 28
    invoke-static {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FaceUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "temp_face_count"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 31
    invoke-static {p0}, Lcom/android/settings/Utils;->isDockingFingerprint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    if-lez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "suggestion_complete_pref"

    .line 36
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "remove_face_count"

    .line 37
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_2

    return v1

    :cond_2
    return v3

    :cond_3
    return v1
.end method
