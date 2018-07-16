.class Lcom/smalife/activity/ClockListActivity$3;
.super Ljava/lang/Object;
.source "ClockListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/ClockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/ClockListActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/ClockListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/ClockListActivity$3;->this$0:Lcom/smalife/activity/ClockListActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/ClockListActivity$3;)Lcom/smalife/activity/ClockListActivity;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$3;->this$0:Lcom/smalife/activity/ClockListActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "root":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity$3;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v2}, Lcom/smalife/activity/ClockListActivity;->access$7(Lcom/smalife/activity/ClockListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity$3;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/ClockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity$3;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/ClockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity$3;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/ClockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v3, Lcom/smalife/activity/ClockListActivity$3$1;

    invoke-direct {v3, p0}, Lcom/smalife/activity/ClockListActivity$3$1;-><init>(Lcom/smalife/activity/ClockListActivity$3;)V

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity$3;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/ClockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    new-instance v3, Lcom/smalife/activity/ClockListActivity$3$2;

    invoke-direct {v3, p0, p4, p5}, Lcom/smalife/activity/ClockListActivity$3$2;-><init>(Lcom/smalife/activity/ClockListActivity$3;J)V

    .line 148
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 167
    const/4 v1, 0x1

    return v1
.end method
