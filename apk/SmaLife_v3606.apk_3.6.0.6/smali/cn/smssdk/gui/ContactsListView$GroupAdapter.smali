.class public abstract Lcn/smssdk/gui/ContactsListView$GroupAdapter;
.super Ljava/lang/Object;
.source "ContactsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/gui/ContactsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GroupAdapter"
.end annotation


# instance fields
.field protected final view:Lcn/smssdk/gui/ContactsListView;


# direct methods
.method public constructor <init>(Lcn/smssdk/gui/ContactsListView;)V
    .locals 0
    .param p1, "view"    # Lcn/smssdk/gui/ContactsListView;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    .line 273
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

.method public abstract getTitleView(ILandroid/widget/TextView;Landroid/view/ViewGroup;)Landroid/widget/TextView;
.end method

.method public abstract getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$0(Lcn/smssdk/gui/ContactsListView;)V

    .line 319
    return-void
.end method
