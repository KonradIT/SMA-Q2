.class public abstract Lcn/smssdk/gui/GroupListView$GroupAdapter;
.super Ljava/lang/Object;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/gui/GroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GroupAdapter"
.end annotation


# instance fields
.field protected final view:Lcn/smssdk/gui/GroupListView;


# direct methods
.method public constructor <init>(Lcn/smssdk/gui/GroupListView;)V
    .locals 0
    .param p1, "view"    # Lcn/smssdk/gui/GroupListView;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView$GroupAdapter;->view:Lcn/smssdk/gui/GroupListView;

    .line 285
    return-void
.end method


# virtual methods
.method public abstract getCount(I)I
.end method

.method public abstract getGroupCount()I
.end method

.method public abstract getGroupTitle(I)Ljava/lang/String;
.end method

.method public abstract getItem(II)Ljava/lang/Object;
.end method

.method public abstract getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView$GroupAdapter;->view:Lcn/smssdk/gui/GroupListView;

    invoke-static {v0}, Lcn/smssdk/gui/GroupListView;->access$0(Lcn/smssdk/gui/GroupListView;)V

    .line 332
    return-void
.end method

.method public abstract onGroupChange(Landroid/view/View;Ljava/lang/String;)V
.end method
