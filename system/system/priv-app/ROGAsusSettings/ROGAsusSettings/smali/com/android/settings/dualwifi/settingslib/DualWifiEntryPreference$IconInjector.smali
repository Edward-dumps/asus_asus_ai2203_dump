.class Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;
.super Ljava/lang/Object;
.source "DualWifiEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconInjector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getIcon(ZIIZZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settingslib/Utils;->getWifiIconResource(ZIIZZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 307
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 308
    iget-object p0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p1
.end method
