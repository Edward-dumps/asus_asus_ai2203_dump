.class public Lcom/android/settings/fuelgauge/ScheduledChargingSuggestionActivity;
.super Landroid/app/Activity;
.source "ScheduledChargingSuggestionActivity.java"


# static fields
.field private static final intent:Landroid/content/Intent;

.field private static final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "mobile_manager://battery/ScheduledCharging"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/ScheduledChargingSuggestionActivity;->uri:Landroid/net/Uri;

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v1, Lcom/android/settings/fuelgauge/ScheduledChargingSuggestionActivity;->intent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 3

    .line 49
    invoke-static {}, Lcom/android/settings/Utils;->isZenfone9()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isRog6()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 52
    sget-object v0, Lcom/android/settings/fuelgauge/ScheduledChargingSuggestionActivity;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/android/settings/fuelgauge/ScheduledChargingSuggestionActivity;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
