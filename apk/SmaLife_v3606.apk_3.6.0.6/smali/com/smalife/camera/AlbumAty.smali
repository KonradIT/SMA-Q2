.class public Lcom/smalife/camera/AlbumAty;
.super Landroid/app/Activity;
.source "AlbumAty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "AlbumAty"


# instance fields
.field adapter:Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

.field private mAlbumView:Lcom/linj/album/view/AlbumGridView;

.field private mBackView:Landroid/widget/ImageView;

.field private mCutButton:Landroid/widget/Button;

.field private mDeleteButton:Landroid/widget/Button;

.field private mEnterView:Landroid/widget/TextView;

.field private mLeaveView:Landroid/widget/TextView;

.field private mSaveRoot:Ljava/lang/String;

.field private mSelectAllView:Landroid/widget/TextView;

.field private mSelectedCounterView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/camera/AlbumAty;)Lcom/linj/album/view/AlbumGridView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/camera/AlbumAty;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/smalife/camera/AlbumAty;->enterEdit()V

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/camera/AlbumAty;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSaveRoot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/camera/AlbumAty;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/smalife/camera/AlbumAty;->leaveEdit()V

    return-void
.end method

.method private enterEdit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/linj/album/view/AlbumGridView;->setEditable(ZLcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/camera/AlbumAty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mCutButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const v0, 0x7f0e0016

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    return-void
.end method

.method private leaveEdit()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    invoke-virtual {v0, v1}, Lcom/linj/album/view/AlbumGridView;->setEditable(Z)V

    .line 170
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mCutButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    const v0, 0x7f0e0016

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    return-void
.end method

.method private selectAllClick()V
    .locals 3

    .prologue
    const v2, 0x7f09000a

    .line 177
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smalife/camera/AlbumAty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    invoke-virtual {v0, p0}, Lcom/linj/album/view/AlbumGridView;->selectAll(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/camera/AlbumAty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    invoke-virtual {v0, p0}, Lcom/linj/album/view/AlbumGridView;->unSelectAll(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V

    .line 182
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/camera/AlbumAty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showDeleteDialog()V
    .locals 4

    .prologue
    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/smalife/camera/AlbumAty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lcom/smalife/camera/AlbumAty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/smalife/camera/AlbumAty$3;

    invoke-direct {v3, p0}, Lcom/smalife/camera/AlbumAty$3;-><init>(Lcom/smalife/camera/AlbumAty;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {p0}, Lcom/smalife/camera/AlbumAty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/smalife/camera/AlbumAty$4;

    invoke-direct {v3, p0}, Lcom/smalife/camera/AlbumAty$4;-><init>(Lcom/smalife/camera/AlbumAty;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 209
    return-void
.end method


# virtual methods
.method public loadAlbum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v4, 0x2

    invoke-static {p0, v4, p1}, Lcom/linj/FileOperateUtil;->getFolderPath(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "thumbFolder":Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/linj/FileOperateUtil;->listFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .restart local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    :cond_0
    new-instance v4, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

    iget-object v5, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v2}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;-><init>(Lcom/linj/album/view/AlbumGridView;Ljava/util/List;)V

    iput-object v4, p0, Lcom/smalife/camera/AlbumAty;->adapter:Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

    .line 121
    iget-object v4, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    iget-object v5, p0, Lcom/smalife/camera/AlbumAty;->adapter:Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

    invoke-virtual {v4, v5}, Lcom/linj/album/view/AlbumGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void

    .line 116
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 117
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    invoke-virtual {v0}, Lcom/linj/album/view/AlbumGridView;->getEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/smalife/camera/AlbumAty;->leaveEdit()V

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckedChanged(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSelectedCounterView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mCutButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mCutButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 156
    :goto_0
    :pswitch_0
    return-void

    .line 138
    :pswitch_1
    invoke-direct {p0}, Lcom/smalife/camera/AlbumAty;->enterEdit()V

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-direct {p0}, Lcom/smalife/camera/AlbumAty;->leaveEdit()V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-direct {p0}, Lcom/smalife/camera/AlbumAty;->selectAllClick()V

    goto :goto_0

    .line 147
    :pswitch_4
    invoke-direct {p0}, Lcom/smalife/camera/AlbumAty;->showDeleteDialog()V

    goto :goto_0

    .line 150
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/camera/CameraAty;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0018
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {p0}, Lcom/smalife/camera/AlbumAty;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 59
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->setContentView(I)V

    .line 61
    const v0, 0x7f0e0015

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/linj/album/view/AlbumGridView;

    iput-object v0, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    .line 62
    const v0, 0x7f0e001c

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/camera/AlbumAty;->mEnterView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/camera/AlbumAty;->mLeaveView:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSelectAllView:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0e001f

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSelectedCounterView:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/camera/AlbumAty;->mDeleteButton:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0e0017

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/camera/AlbumAty;->mCutButton:Landroid/widget/Button;

    .line 68
    const v0, 0x7f0e001a

    invoke-virtual {p0, v0}, Lcom/smalife/camera/AlbumAty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/camera/AlbumAty;->mBackView:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSelectedCounterView:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mEnterView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mLeaveView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mCutButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    new-instance v1, Lcom/smalife/camera/AlbumAty$1;

    invoke-direct {v1, p0}, Lcom/smalife/camera/AlbumAty$1;-><init>(Lcom/smalife/camera/AlbumAty;)V

    invoke-virtual {v0, v1}, Lcom/linj/album/view/AlbumGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mAlbumView:Lcom/linj/album/view/AlbumGridView;

    new-instance v1, Lcom/smalife/camera/AlbumAty$2;

    invoke-direct {v1, p0}, Lcom/smalife/camera/AlbumAty$2;-><init>(Lcom/smalife/camera/AlbumAty;)V

    invoke-virtual {v0, v1}, Lcom/linj/album/view/AlbumGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 101
    const-string v0, "smawatch"

    iput-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSaveRoot:Ljava/lang/String;

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/smalife/camera/AlbumAty;->mSaveRoot:Ljava/lang/String;

    const-string v1, ".jpg"

    invoke-virtual {p0, v0, v1}, Lcom/smalife/camera/AlbumAty;->loadAlbum(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    return-void
.end method
