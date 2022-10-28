.class public Lcom/android/settings/display/ScreenZoomPreference;
.super Landroidx/preference/Preference;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 35
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {p2, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 43
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result p2

    .line 47
    aget-object v0, v0, p2

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "display_size"

    invoke-static {p1, p2, p0}, Lcom/android/settings/analytics/Tracker;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
