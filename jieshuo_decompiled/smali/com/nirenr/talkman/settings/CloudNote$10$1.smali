.class Lcom/nirenr/talkman/settings/CloudNote$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/CloudNote$10;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CloudNote$10;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$10$1;->a:Lcom/nirenr/talkman/settings/CloudNote$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$10$1;->a:Lcom/nirenr/talkman/settings/CloudNote$10;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/CloudNote$10;->b:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CloudNote;->a(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$10$1;->a:Lcom/nirenr/talkman/settings/CloudNote$10;

    iget v0, v0, Lcom/nirenr/talkman/settings/CloudNote$10;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/CloudNote;->d(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V

    return-void
.end method
