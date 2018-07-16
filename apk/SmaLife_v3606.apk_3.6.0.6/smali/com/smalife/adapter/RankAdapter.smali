.class public Lcom/smalife/adapter/RankAdapter;
.super Landroid/widget/BaseAdapter;
.source "RankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/adapter/RankAdapter$HoldView;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private rlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/adapter/RankField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "mcontext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/adapter/RankField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/RankField;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/smalife/adapter/RankAdapter;->rlist:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Lcom/smalife/adapter/RankAdapter;->context:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
