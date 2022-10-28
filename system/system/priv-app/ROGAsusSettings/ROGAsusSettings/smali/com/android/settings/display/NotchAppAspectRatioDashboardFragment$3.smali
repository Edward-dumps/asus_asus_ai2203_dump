.class Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$3;
.super Ljava/lang/Object;
.source "NotchAppAspectRatioDashboardFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;
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

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I
    .locals 4

    .line 254
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$700(Ljava/lang/String;)Z

    move-result p0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const v1, 0x3fee147b    # 1.86f

    if-eqz p0, :cond_0

    .line 255
    invoke-static {}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$800()Ljava/lang/Object;

    move-result-object p0

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 262
    :goto_0
    iget-object v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    invoke-static {}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$800()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    cmpl-float v1, v0, p0

    if-lez v1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    cmpl-float p0, p0, v0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 274
    :cond_3
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 250
    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$3;->compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result p0

    return p0
.end method
