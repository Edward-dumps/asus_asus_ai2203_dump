.class final Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "GloveModePreferenceController.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDeathRecipient"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 0

    const-string p0, "glove_mode"

    const-string p1, "GloveModeService died"

    .line 60
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
