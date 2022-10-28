.class Lcom/android/settings/display/AppAspectRatioDashboardFragment$3;
.super Ljava/lang/Object;
.source "AppAspectRatioDashboardFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppAspectRatioDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I
    .locals 5

    .line 117
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->actualMaxAspect:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    const v2, 0x3fee147b    # 1.86f

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    if-nez v0, :cond_0

    :goto_0
    move p0, v3

    goto :goto_1

    .line 119
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$200(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 120
    invoke-static {}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$100()Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    .line 127
    :goto_1
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->actualMaxAspect:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_2

    :goto_2
    move v2, v3

    goto :goto_3

    .line 129
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 130
    invoke-static {}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$100()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    cmpl-float v0, v2, p0

    if-lez v0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    cmpl-float p0, p0, v2

    if-lez p0, :cond_5

    const/4 p0, 0x1

    return p0

    .line 141
    :cond_5
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 113
    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$3;->compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result p0

    return p0
.end method
