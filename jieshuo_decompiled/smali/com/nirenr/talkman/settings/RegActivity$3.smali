.class Lcom/nirenr/talkman/settings/RegActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/RegActivity;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/RegActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/RegActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/RegActivity$3;->a:Lcom/nirenr/talkman/settings/RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/RegActivity$3;->a:Lcom/nirenr/talkman/settings/RegActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
