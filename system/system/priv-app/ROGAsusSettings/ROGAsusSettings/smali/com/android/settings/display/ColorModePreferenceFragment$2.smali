.class Lcom/android/settings/display/ColorModePreferenceFragment$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ColorModePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ColorModePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_availableColorModes"

    const-string v2, "array"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 218
    array-length p0, p0

    if-lez p0, :cond_0

    .line 219
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->areAccessibilityTransformsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
