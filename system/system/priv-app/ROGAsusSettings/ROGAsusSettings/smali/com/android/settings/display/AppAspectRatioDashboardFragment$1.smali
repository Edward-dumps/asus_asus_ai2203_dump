.class Lcom/android/settings/display/AppAspectRatioDashboardFragment$1;
.super Ljava/lang/Object;
.source "AppAspectRatioDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppAspectRatioDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currentUserId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$1;->currentUserId:I

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1

    .line 71
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 72
    iget-boolean p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    if-nez p1, :cond_1

    iget p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$1;->currentUserId:I

    if-eq v0, p0, :cond_0

    const/16 p0, 0x935

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 0

    return-void
.end method
