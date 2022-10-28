.class abstract Lcom/android/settings/display/AppAspectRatioDashboardFragment$AspectRatioFilter;
.super Ljava/lang/Object;
.source "AppAspectRatioDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppAspectRatioDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AspectRatioFilter"
.end annotation


# instance fields
.field protected pm:Landroid/content/pm/PackageManager;

.field protected screenAspectRatio:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/display/AppAspectRatioDashboardFragment$1;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AspectRatioFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AspectRatioFilter;->pm:Landroid/content/pm/PackageManager;

    const-string v0, "display"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 169
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget p1, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 172
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AspectRatioFilter;->screenAspectRatio:F

    :cond_0
    return-void
.end method
