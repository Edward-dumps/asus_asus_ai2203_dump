.class Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;
.super Ljava/lang/Object;
.source "NotchAppAspectRatioDashboardFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 130
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;->this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    iput-object p2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;->val$this$0:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;->this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object p1

    .line 135
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 136
    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;->this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    invoke-static {p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->access$100(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;->this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    iget-object p2, p1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->this$0:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->access$200(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iget-object p4, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;->this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    invoke-static {p4}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;->access$300(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$400(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;I)V

    .line 139
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup$1;->this$1:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
