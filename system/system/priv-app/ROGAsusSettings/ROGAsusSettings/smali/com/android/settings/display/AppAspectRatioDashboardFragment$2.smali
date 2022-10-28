.class Lcom/android/settings/display/AppAspectRatioDashboardFragment$2;
.super Lcom/android/settings/display/AppAspectRatioDashboardFragment$AspectRatioFilter;
.source "AppAspectRatioDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppAspectRatioDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AspectRatioFilter;-><init>(Lcom/android/settings/display/AppAspectRatioDashboardFragment$1;)V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 10

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AspectRatioFilter;->pm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 89
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    if-nez v2, :cond_0

    return v0

    .line 92
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5

    array-length v4, v2

    if-lez v4, :cond_5

    .line 94
    array-length v4, v2

    move v5, v0

    move v6, v3

    :goto_0
    const/4 v7, 0x0

    if-ge v5, v4, :cond_2

    aget-object v8, v2, v5

    .line 95
    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v9

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_1

    .line 96
    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v7

    iget v8, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AspectRatioFilter;->screenAspectRatio:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    move v6, v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    .line 100
    iget-object p0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->actualMaxAspect:F

    cmpl-float v1, p0, v7

    if-eqz v1, :cond_3

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p0, p0, v1

    if-nez p0, :cond_4

    .line 103
    :cond_3
    invoke-static {}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$100()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v3

    :catch_0
    :cond_5
    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
