.class Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$2;
.super Ljava/lang/Object;
.source "NotchAppAspectRatioDashboardFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;-><init>(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;Landroid/view/View;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

.field final synthetic val$this$0:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$2;->this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    iput-object p2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$2;->val$this$0:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$2;->this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    iget-object v0, v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->this$0:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$500(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$2;->this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    if-ne v0, p0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->this$0:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$502(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;)Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    :cond_0
    return-void
.end method
