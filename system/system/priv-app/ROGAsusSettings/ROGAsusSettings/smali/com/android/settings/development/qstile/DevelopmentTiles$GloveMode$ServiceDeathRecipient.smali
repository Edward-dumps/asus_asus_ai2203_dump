.class final Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "DevelopmentTiles.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDeathRecipient"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 0

    const-string p0, "DevelopmentTiles"

    const-string p1, "GloveModeService died"

    .line 690
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
