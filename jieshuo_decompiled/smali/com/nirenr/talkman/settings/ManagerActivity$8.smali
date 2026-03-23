.class Lcom/nirenr/talkman/settings/ManagerActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ManagerActivity;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/nirenr/talkman/settings/ManagerActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ManagerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const p2, 0x7f070973

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, ".tpk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string p2, ".rpk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string p2, ".lpk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string p2, ".fbk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string p2, ".cbk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    const p1, 0x7f070383

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;

    invoke-direct {p1, p0}, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;-><init>(Lcom/nirenr/talkman/settings/ManagerActivity$8;)V

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void

    :pswitch_0
    :try_start_0
    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->c:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/androlua/LuaUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const p2, 0x7f070384

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :pswitch_1
    new-instance p1, Lcom/nirenr/talkman/settings/ManagerActivity$8$1;

    invoke-direct {p1, p0}, Lcom/nirenr/talkman/settings/ManagerActivity$8$1;-><init>(Lcom/nirenr/talkman/settings/ManagerActivity$8;)V

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void

    :pswitch_2
    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/nirenr/talkman/settings/ManagerActivity;->c(Lcom/nirenr/talkman/settings/ManagerActivity;Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_3
    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/nirenr/talkman/settings/ManagerActivity;->b(Lcom/nirenr/talkman/settings/ManagerActivity;Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1668fe -> :sswitch_4
        0x167441 -> :sswitch_3
        0x168c79 -> :sswitch_2
        0x16a2ff -> :sswitch_1
        0x16aa81 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
