.class Lcom/smalife/activity/RetPasswordActivity$2;
.super Ljava/lang/Object;
.source "RetPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RetPasswordActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/RetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RetPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const v9, 0x7f090215

    const/4 v8, 0x1

    .line 141
    iget-object v6, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v6}, Lcom/smalife/activity/RetPasswordActivity;->access$1(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "contentString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "contentString = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v6}, Lcom/smalife/activity/RetPasswordActivity;->access$1(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 145
    .local v0, "contentSeq":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_5

    .line 147
    iget-object v6, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v6}, Lcom/smalife/activity/RetPasswordActivity;->access$2(Lcom/smalife/activity/RetPasswordActivity;)Lcom/smalife/country/GetCountryNameSort;

    move-result-object v6

    .line 148
    iget-object v7, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v7}, Lcom/smalife/activity/RetPasswordActivity;->access$3(Lcom/smalife/activity/RetPasswordActivity;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/smalife/country/GetCountryNameSort;->search(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 147
    check-cast v3, Ljava/util/ArrayList;

    .line 150
    .local v3, "fileterList":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 151
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v2, "country_name":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 159
    iget-object v6, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v6}, Lcom/smalife/activity/RetPasswordActivity;->access$4(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .end local v2    # "country_name":Ljava/lang/StringBuffer;
    .end local v3    # "fileterList":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    .end local v4    # "i":I
    :cond_0
    :goto_1
    instance-of v6, v0, Landroid/text/Spannable;

    if-eqz v6, :cond_1

    move-object v5, v0

    .line 179
    check-cast v5, Landroid/text/Spannable;

    .line 180
    .local v5, "spannable":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 182
    .end local v5    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-void

    .line 153
    .restart local v2    # "country_name":Ljava/lang/StringBuffer;
    .restart local v3    # "fileterList":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    .restart local v4    # "i":I
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smalife/country/CountrySortModel;

    iget-object v6, v6, Lcom/smalife/country/CountrySortModel;->countryName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v4, v6, :cond_3

    .line 155
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "country_name":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v6}, Lcom/smalife/activity/RetPasswordActivity;->access$4(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-virtual {v7}, Lcom/smalife/activity/RetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 162
    const v8, 0x7f090214

    .line 161
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 166
    .end local v3    # "fileterList":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 167
    iget-object v6, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v6}, Lcom/smalife/activity/RetPasswordActivity;->access$1(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v7}, Lcom/smalife/activity/RetPasswordActivity;->access$5(Lcom/smalife/activity/RetPasswordActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v6, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v6}, Lcom/smalife/activity/RetPasswordActivity;->access$4(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-virtual {v7}, Lcom/smalife/activity/RetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 170
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 171
    const-string v6, "+"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    iget-object v6, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-static {v6}, Lcom/smalife/activity/RetPasswordActivity;->access$4(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-virtual {v7}, Lcom/smalife/activity/RetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity$2;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/RetPasswordActivity;->access$0(Lcom/smalife/activity/RetPasswordActivity;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 131
    return-void
.end method
