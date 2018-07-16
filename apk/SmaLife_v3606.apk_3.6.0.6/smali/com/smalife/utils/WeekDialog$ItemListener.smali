.class Lcom/smalife/utils/WeekDialog$ItemListener;
.super Ljava/lang/Object;
.source "WeekDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/utils/WeekDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/utils/WeekDialog;


# direct methods
.method private constructor <init>(Lcom/smalife/utils/WeekDialog;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/smalife/utils/WeekDialog$ItemListener;->this$0:Lcom/smalife/utils/WeekDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/utils/WeekDialog;Lcom/smalife/utils/WeekDialog$ItemListener;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/smalife/utils/WeekDialog$ItemListener;-><init>(Lcom/smalife/utils/WeekDialog;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 81
    .local p1, "root":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0e0075

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 82
    .local v0, "check_btn":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/smalife/utils/WeekDialog$ItemListener;->this$0:Lcom/smalife/utils/WeekDialog;

    invoke-static {v1}, Lcom/smalife/utils/WeekDialog;->access$0(Lcom/smalife/utils/WeekDialog;)Lcom/smalife/adapter/WeekAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/smalife/adapter/WeekAdapter;->selectItem(IZ)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/smalife/utils/WeekDialog$ItemListener;->this$0:Lcom/smalife/utils/WeekDialog;

    invoke-static {v1}, Lcom/smalife/utils/WeekDialog;->access$0(Lcom/smalife/utils/WeekDialog;)Lcom/smalife/adapter/WeekAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Lcom/smalife/adapter/WeekAdapter;->selectItem(IZ)V

    goto :goto_0
.end method
