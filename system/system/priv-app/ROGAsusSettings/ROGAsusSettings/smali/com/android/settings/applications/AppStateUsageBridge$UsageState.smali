.class public Lcom/android/settings/applications/AppStateUsageBridge$UsageState;
.super Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateUsageBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageState"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2

    .line 65
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 66
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 67
    iget v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iput v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    .line 68
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    .line 69
    iget-boolean p1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    return-void
.end method
