.class Lcn/smssdk/gui/GroupListView$2;
.super Ljava/lang/Object;
.source "GroupListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/GroupListView;->init(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcn/smssdk/gui/GroupListView;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/GroupListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
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
    .line 77
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-static {v2}, Lcn/smssdk/gui/GroupListView;->access$5(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-static {v2}, Lcn/smssdk/gui/GroupListView;->access$6(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$InnerAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 79
    .local v0, "group":I
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-static {v2}, Lcn/smssdk/gui/GroupListView;->access$6(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$InnerAdapter;

    move-result-object v2

    invoke-static {v2}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->access$0(Lcn/smssdk/gui/GroupListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, p3, v2

    add-int/lit8 v1, v2, -0x1

    .line 80
    .local v1, "item":I
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-static {v2}, Lcn/smssdk/gui/GroupListView;->access$5(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$OnItemClickListener;

    move-result-object v2

    iget-object v3, p0, Lcn/smssdk/gui/GroupListView$2;->this$0:Lcn/smssdk/gui/GroupListView;

    invoke-interface {v2, v3, p2, v0, v1}, Lcn/smssdk/gui/GroupListView$OnItemClickListener;->onItemClick(Lcn/smssdk/gui/GroupListView;Landroid/view/View;II)V

    .line 82
    .end local v0    # "group":I
    .end local v1    # "item":I
    :cond_0
    return-void
.end method
