.class public Lcom/android/settings/biometrics/asusfacelock/FaceUtil;
.super Ljava/lang/Object;
.source "FaceUtil.java"


# direct methods
.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "FaceUtil"

    const-string p1, "FaceUnlockService not found!!!"

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
