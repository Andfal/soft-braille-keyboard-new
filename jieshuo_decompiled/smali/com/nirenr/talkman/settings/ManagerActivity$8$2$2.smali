.class Lcom/nirenr/talkman/settings/ManagerActivity$8$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/ManagerActivity$8$2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ManagerActivity$8$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8$2;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p2, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->f:Lcom/nirenr/talkman/settings/ManagerActivity;

    const v0, 0x7f0702c9

    iget-object p1, p1, Lcom/nirenr/talkman/settings/ManagerActivity$8;->e:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ManagerActivity$8$2$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8$2;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/ManagerActivity$8$2;->a:Lcom/nirenr/talkman/settings/ManagerActivity$8;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/ManagerActivity$8;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/lang/String;)Z

    const p2, 0x7f07037a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
