.class Lcom/android/settings/LinkifyUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/LinkifyUtils$OnClickListener;Landroid/widget/TextView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/LinkifyUtils$1;->val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    iput-object p2, p0, Lcom/android/settings/LinkifyUtils$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/LinkifyUtils$1;->val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-interface {p0}, Lcom/android/settings/LinkifyUtils$OnClickListener;->onClick()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 80
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/settings/LinkifyUtils$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method
