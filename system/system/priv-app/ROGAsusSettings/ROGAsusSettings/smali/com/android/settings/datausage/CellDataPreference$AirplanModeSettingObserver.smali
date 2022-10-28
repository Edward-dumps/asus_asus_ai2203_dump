.class Lcom/android/settings/datausage/CellDataPreference$AirplanModeSettingObserver;
.super Landroid/database/ContentObserver;
.source "CellDataPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AirplanModeSettingObserver"
.end annotation


# instance fields
.field airplanModeUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$AirplanModeSettingObserver;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    .line 324
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "airplane_mode_on"

    .line 321
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$AirplanModeSettingObserver;->airplanModeUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 337
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "CellDataPreference"

    const-string p2, "onChange"

    .line 338
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p0, p0, Lcom/android/settings/datausage/CellDataPreference$AirplanModeSettingObserver;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->onMobileDataEnabledChange()V

    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$AirplanModeSettingObserver;->airplanModeUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    .line 332
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
