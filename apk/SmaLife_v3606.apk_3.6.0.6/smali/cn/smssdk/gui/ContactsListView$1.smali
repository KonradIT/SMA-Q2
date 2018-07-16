.class Lcn/smssdk/gui/ContactsListView$1;
.super Ljava/lang/Object;
.source "ContactsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/ContactsListView;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/ContactsListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0, p2}, Lcn/smssdk/gui/ContactsListView;->access$2(Lcn/smssdk/gui/ContactsListView;I)V

    .line 72
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$3(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$4(Lcn/smssdk/gui/ContactsListView;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$1(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$1(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 79
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$1(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$1(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 67
    :cond_0
    return-void
.end method
