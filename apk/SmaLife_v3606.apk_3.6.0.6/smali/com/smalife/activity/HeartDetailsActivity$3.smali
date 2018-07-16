.class Lcom/smalife/activity/HeartDetailsActivity$3;
.super Ljava/lang/Object;
.source "HeartDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/HeartDetailsActivity;->showAddDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartDetailsActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$heartValue:Landroid/widget/EditText;

.field private final synthetic val$tvDate:Landroid/widget/TextView;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smalife/activity/HeartDetailsActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    iput-object p2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->val$heartValue:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->val$tvDate:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->val$dialog:Landroid/app/Dialog;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 189
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->val$heartValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "value2":Ljava/lang/String;
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailsActivity;->access$1(Lcom/smalife/activity/HeartDetailsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v3}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v4}, Lcom/smalife/activity/HeartDetailsActivity;->access$3(Lcom/smalife/activity/HeartDetailsActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2, v5}, Lcom/smalife/activity/HeartDetailsActivity;->access$2(Lcom/smalife/activity/HeartDetailsActivity;Z)V

    .line 209
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailsActivity;->access$5(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v4}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smalife/utils/FileHelper;->saveHeartDetailsData(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailsActivity;->access$6(Lcom/smalife/activity/HeartDetailsActivity;)Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->notifyDataSetChanged()V

    .line 211
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 212
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->val$value:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->val$value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v3}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v4}, Lcom/smalife/activity/HeartDetailsActivity;->access$3(Lcom/smalife/activity/HeartDetailsActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;

    .line 195
    .local v0, "entity":Lcom/smalife/activity/HeartDetailsActivity$ListEntity;
    invoke-virtual {v0, v1}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0    # "entity":Lcom/smalife/activity/HeartDetailsActivity$ListEntity;
    :cond_2
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    new-instance v0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;

    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;-><init>(Lcom/smalife/activity/HeartDetailsActivity;Lcom/smalife/activity/HeartDetailsActivity$ListEntity;)V

    .line 199
    .restart local v0    # "entity":Lcom/smalife/activity/HeartDetailsActivity$ListEntity;
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->val$tvDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->setDate(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->setValue(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_3

    .line 203
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailsActivity;->access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity$3;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartDetailsActivity;->access$4(Lcom/smalife/activity/HeartDetailsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0
.end method
