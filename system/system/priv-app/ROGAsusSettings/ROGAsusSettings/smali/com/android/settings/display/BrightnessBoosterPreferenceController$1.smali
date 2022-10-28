.class Lcom/android/settings/display/BrightnessBoosterPreferenceController$1;
.super Ljava/lang/Object;
.source "BrightnessBoosterPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/BrightnessBoosterPreferenceController;->prepareWarnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/BrightnessBoosterPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/BrightnessBoosterPreferenceController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController$1;->this$0:Lcom/android/settings/display/BrightnessBoosterPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController$1;->this$0:Lcom/android/settings/display/BrightnessBoosterPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->access$000(Lcom/android/settings/display/BrightnessBoosterPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "asus_brightness_booster"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
