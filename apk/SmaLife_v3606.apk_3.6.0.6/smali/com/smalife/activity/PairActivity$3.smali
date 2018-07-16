.class Lcom/smalife/activity/PairActivity$3;
.super Ljava/lang/Object;
.source "PairActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/PairActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/PairActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/PairActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const v7, 0x7f090215

    const/4 v6, 0x1

    .line 275
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v4}, Lcom/smalife/activity/PairActivity;->access$1(Lcom/smalife/activity/PairActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "contentString":Ljava/lang/String;
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v4}, Lcom/smalife/activity/PairActivity;->access$1(Lcom/smalife/activity/PairActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 281
    .local v0, "contentSeq":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 283
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v4}, Lcom/smalife/activity/PairActivity;->access$2(Lcom/smalife/activity/PairActivity;)Lcom/smalife/country/GetCountryNameSort;

    move-result-object v4

    .line 284
    iget-object v5, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v5}, Lcom/smalife/activity/PairActivity;->access$3(Lcom/smalife/activity/PairActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/smalife/country/GetCountryNameSort;->search(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 283
    check-cast v2, Ljava/util/ArrayList;

    .line 286
    .local v2, "fileterList":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 287
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v4}, Lcom/smalife/activity/PairActivity;->access$4(Lcom/smalife/activity/PairActivity;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/country/CountrySortModel;

    iget-object v4, v4, Lcom/smalife/country/CountrySortModel;->countryName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .end local v2    # "fileterList":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    :cond_0
    :goto_0
    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 307
    check-cast v3, Landroid/text/Spannable;

    .line 308
    .local v3, "spannable":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 310
    .end local v3    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-void

    .line 289
    .restart local v2    # "fileterList":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    :cond_2
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v4}, Lcom/smalife/activity/PairActivity;->access$4(Lcom/smalife/activity/PairActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 290
    const v6, 0x7f090214

    .line 289
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    .end local v2    # "fileterList":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 295
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v4}, Lcom/smalife/activity/PairActivity;->access$1(Lcom/smalife/activity/PairActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v5}, Lcom/smalife/activity/PairActivity;->access$5(Lcom/smalife/activity/PairActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v4}, Lcom/smalife/activity/PairActivity;->access$4(Lcom/smalife/activity/PairActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 298
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 299
    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-static {v4}, Lcom/smalife/activity/PairActivity;->access$4(Lcom/smalife/activity/PairActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/smalife/activity/PairActivity$3;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/PairActivity;->access$0(Lcom/smalife/activity/PairActivity;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 265
    return-void
.end method
