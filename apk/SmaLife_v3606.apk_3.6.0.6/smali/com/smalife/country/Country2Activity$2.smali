.class Lcom/smalife/country/Country2Activity$2;
.super Ljava/lang/Object;
.source "Country2Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/country/Country2Activity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/country/Country2Activity;


# direct methods
.method constructor <init>(Lcom/smalife/country/Country2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/country/Country2Activity$2;->this$0:Lcom/smalife/country/Country2Activity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 141
    .local v0, "countryName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 142
    .local v1, "countryNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/smalife/country/Country2Activity$2;->this$0:Lcom/smalife/country/Country2Activity;

    invoke-static {v3}, Lcom/smalife/country/Country2Activity;->access$2(Lcom/smalife/country/Country2Activity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smalife/country/CountrySortModel;

    iget-object v0, v3, Lcom/smalife/country/CountrySortModel;->countryName:Ljava/lang/String;

    .line 143
    iget-object v3, p0, Lcom/smalife/country/Country2Activity$2;->this$0:Lcom/smalife/country/Country2Activity;

    invoke-static {v3}, Lcom/smalife/country/Country2Activity;->access$2(Lcom/smalife/country/Country2Activity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smalife/country/CountrySortModel;

    iget-object v1, v3, Lcom/smalife/country/CountrySortModel;->countryNumber:Ljava/lang/String;

    .line 144
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/smalife/country/Country2Activity$2;->this$0:Lcom/smalife/country/Country2Activity;

    const-class v4, Lcom/smalife/activity/RetPasswordActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    const-string v3, "countryName"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v3, "countryNumber"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v3, p0, Lcom/smalife/country/Country2Activity$2;->this$0:Lcom/smalife/country/Country2Activity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/smalife/country/Country2Activity;->setResult(ILandroid/content/Intent;)V

    .line 149
    iget-object v3, p0, Lcom/smalife/country/Country2Activity$2;->this$0:Lcom/smalife/country/Country2Activity;

    iget-object v3, v3, Lcom/smalife/country/Country2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "countryName: + "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "countryNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lcom/smalife/country/Country2Activity$2;->this$0:Lcom/smalife/country/Country2Activity;

    invoke-virtual {v3}, Lcom/smalife/country/Country2Activity;->finish()V

    .line 152
    return-void
.end method