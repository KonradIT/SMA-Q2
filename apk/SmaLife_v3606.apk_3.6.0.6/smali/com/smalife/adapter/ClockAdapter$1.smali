.class Lcom/smalife/adapter/ClockAdapter$1;
.super Ljava/lang/Object;
.source "ClockAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/adapter/ClockAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/adapter/ClockAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/smalife/adapter/ClockAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/adapter/ClockAdapter$1;->this$0:Lcom/smalife/adapter/ClockAdapter;

    iput p2, p0, Lcom/smalife/adapter/ClockAdapter$1;->val$position:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter$1;->this$0:Lcom/smalife/adapter/ClockAdapter;

    invoke-static {v0}, Lcom/smalife/adapter/ClockAdapter;->access$0(Lcom/smalife/adapter/ClockAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/smalife/adapter/ClockAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v0}, Lcom/smalife/entity/ClockEntity;->getOpenOrClose()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter$1;->this$0:Lcom/smalife/adapter/ClockAdapter;

    invoke-static {v0}, Lcom/smalife/adapter/ClockAdapter;->access$0(Lcom/smalife/adapter/ClockAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/smalife/adapter/ClockAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/ClockEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smalife/entity/ClockEntity;->setOpenOrClose(I)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter$1;->this$0:Lcom/smalife/adapter/ClockAdapter;

    iget v1, p0, Lcom/smalife/adapter/ClockAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/smalife/adapter/ClockAdapter;->access$1(Lcom/smalife/adapter/ClockAdapter;I)V

    .line 80
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/smalife/adapter/ClockAdapter$1;->this$0:Lcom/smalife/adapter/ClockAdapter;

    invoke-static {v0}, Lcom/smalife/adapter/ClockAdapter;->access$0(Lcom/smalife/adapter/ClockAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/smalife/adapter/ClockAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v0, v2}, Lcom/smalife/entity/ClockEntity;->setOpenOrClose(I)V

    goto :goto_0
.end method
