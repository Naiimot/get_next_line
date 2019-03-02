/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdelabro <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/25 20:09:39 by tdelabro          #+#    #+#             */
/*   Updated: 2019/03/02 19:25:11 by tdelabro         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <string.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <stdint.h>
# include <limits.h>

# define BUFF_SIZE 1

typedef enum
{
	FALSE,
	TRUE
}	t_bool;

void			ft_bzero(void *s, size_t n);
char			*ft_strdup(const char *s1);
size_t			ft_strlen(const char *s);
void			*ft_memmove(void *dst, const void *src, size_t len);
char			*ft_strchr(const char *s, int c);
void			*ft_memalloc(size_t size);
void			ft_memdel(void **ap);
char			*ft_strjoin(char const *s1, char const *s2);
typedef struct	s_list
{
	void			*content;
	size_t			content_size;
	struct s_list	*next;
}				t_list;
t_list			*ft_lstnew(void const *content, size_t content_size);
void			ft_lstadd(t_list **alst, t_list *new);

#endif
