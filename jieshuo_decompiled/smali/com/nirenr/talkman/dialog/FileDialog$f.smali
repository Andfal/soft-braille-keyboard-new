.class Lcom/nirenr/talkman/dialog/FileDialog$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/ArrayListAdapter;

.field final synthetic d:Landroid/app/AlertDialog;

.field final synthetic e:Lcom/nirenr/talkman/dialog/FileDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/FileDialog;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;Landroid/widget/ArrayListAdapter;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/FileDialog$f;->e:Lcom/nirenr/talkman/dialog/FileDialog;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/FileDialog$f;->a:Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/FileDialog$f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nirenr/talkman/dialog/FileDialog$f;->c:Landroid/widget/ArrayListAdapter;

    iput-object p5, p0, Lcom/nirenr/talkman/dialog/FileDialog$f;->d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/FileDialog$f;->a:Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/FileDialog$f;->b:Ljava/lang/String;

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/FileDialog$f;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p4, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;->onAdd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/FileDialog$f;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
