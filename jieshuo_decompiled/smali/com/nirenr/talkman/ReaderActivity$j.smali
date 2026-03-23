.class Lcom/nirenr/talkman/ReaderActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ReaderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ReaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$j;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$j;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/ReaderActivity;->b(Lcom/nirenr/talkman/ReaderActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
