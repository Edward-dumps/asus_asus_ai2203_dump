.class Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "FloatingMenuOpacityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController$1;->this$0:Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController$1;->this$0:Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->access$000(Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;)V

    return-void
.end method
