.class Lcom/smalife/activity/LongSitActivity$3;
.super Ljava/lang/Object;
.source "LongSitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/LongSitActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/LongSitActivity;

.field private final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LongSitActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LongSitActivity$3;->this$0:Lcom/smalife/activity/LongSitActivity;

    iput-object p2, p0, Lcom/smalife/activity/LongSitActivity$3;->val$et:Landroid/widget/EditText;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/smalife/activity/LongSitActivity$3;->this$0:Lcom/smalife/activity/LongSitActivity;

    invoke-static {v0}, Lcom/smalife/activity/LongSitActivity;->access$3(Lcom/smalife/activity/LongSitActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity$3;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 200
    iget-object v0, p0, Lcom/smalife/activity/LongSitActivity$3;->this$0:Lcom/smalife/activity/LongSitActivity;

    invoke-static {v0}, Lcom/smalife/activity/LongSitActivity;->access$2(Lcom/smalife/activity/LongSitActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 201
    return-void
.end method
